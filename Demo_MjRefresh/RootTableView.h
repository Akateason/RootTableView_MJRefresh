//
//  RootTableView.h
//  Demo_MjRefresh
//
//  Created by TuTu on 15/12/3.
//  Copyright © 2015年 teason. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RootTableViewDelegate <NSObject>
- (void)loadNewData ;
- (void)loadMoreData ;
@end

@interface RootTableView : UITableView
@property (nonatomic,weak) id <RootTableViewDelegate> myDelegate ; // SET myDelegate TO YOUR CTRLLER
@property (nonatomic) BOOL showRefreshDetail ;      // DEFATULT IS `NO` -> ONLY GIF IMAGES , SHOW WORDS WHEN IT BECOMES `YES`
@property (nonatomic) BOOL automaticallyLoadMore ;  // DEFAULT IS `NO` -> MANUALLY LOADING . AUTOMATICALLY LOAD WHEN IT BECOMES `YES`
@end