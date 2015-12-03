# RootTableView_MJRefresh


blend MJRefresh in TableView .

Public APIs .
```
@property (nonatomic) BOOL showRefreshDetail ;      // DEFATULT IS `NO` -> ONLY GIF IMAGES , SHOW WORDS WHEN IT BECOMES `YES`
@property (nonatomic) BOOL automaticallyLoadMore ;  // DEFAULT IS `NO` -> MANUALLY LOADING . AUTOMATICALLY LOAD WHEN IT BECOMES `YES`
```
change the gif Images list in private API .
```
@property (nonatomic,strong) NSArray *gifImageList ;
```
Protocol delegate .
```
@protocol RootTableViewDelegate <NSObject>
- (void)loadNewData ;
- (void)loadMoreData ;
@end
```
implemente this two callback methods in your controller .
