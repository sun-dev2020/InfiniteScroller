//
//  InfiniteScroller.m
//  InfiniteScroller
//
//  Created by mac on 15/9/24.
//  Copyright (c) 2015年 treebear. All rights reserved.
//

#import "InfiniteScroller.h"

@implementation InfiniteScroller


-(instancetype)initWithFrame:(CGRect)frame withDataSources:(NSArray *)images{
    self = [super initWithFrame:frame];
    if (self) {
        pageNumber = images.count;
        for (int i = 0; i< images.count + 2; i++) {
            UIImageView *imageView = [[UIImageView alloc] init];
            // 1 + n + 1
            if (i == 0) {
                imageView.image = images[images.count - 1];

            }else if (i == images.count + 1){
                imageView.image = images[0];

            }else{
                imageView.image = images[i - 1];
                
            }
            imageView.frame = CGRectMake(i*frame.size.width, 0.0f, frame.size.width, frame.size.height);
            
            [self addSubview:imageView];
            [self setContentSize:CGSizeMake(CGRectGetWidth(frame) * (images.count +2), CGRectGetHeight(frame))];
            [self setContentOffset:CGPointMake(frame.size.width, 0.0f)];
            self.pagingEnabled = YES;
            self.delegate = self;
        }
        
    }
    return self;
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    //从n到n+1时设置偏移回第一张的时候，往左滑的时候设置回第n张
    if (scrollView.contentOffset.x == (pageNumber +1) * scrollView.frame.size.width ) {
        [scrollView setContentOffset:CGPointMake(scrollView.frame.size.width, 0.0f)];
    }else if (scrollView.contentOffset.x == 0.0f){
        [scrollView setContentOffset:CGPointMake(scrollView.frame.size.width *pageNumber, 0.0f)];
    }
}

@end
