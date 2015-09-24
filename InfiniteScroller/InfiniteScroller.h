//
//  InfiniteScroller.h
//  InfiniteScroller
//
//  Created by mac on 15/9/24.
//  Copyright (c) 2015年 treebear. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfiniteScroller : UIScrollView<UIScrollViewDelegate>
{
    NSInteger pageNumber;
}

-(instancetype)initWithFrame:(CGRect)frame withDataSources:(NSArray *)images;

@end
