//
//  ViewController.m
//  Demo_MjRefresh
//
//  Created by TuTu on 15/12/3.
//  Copyright © 2015年 teason. All rights reserved.
//

#import "ViewController.h"
#import "RootTableView.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate,RootTableViewDelegate>
@property (nonatomic,strong) NSMutableArray *dataList  ;
@end

@implementation ViewController

- (NSMutableArray *)dataList
{
    if (!_dataList) {
        _dataList = [NSMutableArray arrayWithArray:@[@1,@2,@3,@4,@5,@6,@7,@8,@9,@10]] ;
    }
    
    return _dataList ;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.table.separatorStyle = UITableViewCellSeparatorStyleNone ;
    
    self.table.dataSource = self ;
    self.table.delegate = self ;
    self.table.myDelegate = self ;
   
//    self.table.showRefreshDetail = YES ;
//    self.table.automaticallyLoadMore = YES ;
}


#pragma mark --
#pragma mark - RootTableViewDelegate
- (void)loadNewData
{
    [self.dataList insertObject:@100 atIndex:0] ;
}

- (void)loadMoreData
{
    [self.dataList addObject:@99] ;
}

#pragma mark --
#pragma mark - UITableView delegate & datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"data : %@ , row : %@",self.dataList[indexPath.row],@(indexPath.row)];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"you select : %@",self.dataList) ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
