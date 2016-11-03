//
//  SingleViewController.m
//  FAQ
//
//  Created by jayaprada on 21/03/16.
//  Copyright © 2016 Aravind. All rights reserved.
//

#import "SingleViewController.h"

@interface SingleViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSInteger scrollOffSet;
    NSInteger cellDisplayCount;
}
@property(nonatomic, strong) NSMutableArray *dataArray;//number of array


@end

@implementation SingleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    cellDisplayCount = 0;
    self.dataArray = [[NSMutableArray alloc] init];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITABLEVIEW METHODS

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
 
    return  self.dataArray.count;
    
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSInteger lastSectionIndex = [tableView numberOfSections] - 1;
    NSInteger lastRowIndex = [tableView numberOfRowsInSection:lastSectionIndex] - 1;
    
    if ((indexPath.section == lastSectionIndex) && (indexPath.row == lastRowIndex)) {
        
             cellDisplayCount ++;
            
            if (scrollOffSet > 19 ) {//this is the last cell
                scrollOffSet = scrollOffSet * cellDisplayCount;
                     [self getDataForOffSet:[NSString stringWithFormat:@"%ld",scrollOffSet]];
             }
        }
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *identifier = @"cellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.selectionStyle =  UITableViewCellSelectionStyleNone;
    //update cell
    return cell;
    
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    return 44;
}
#pragma mark - SERVER CALL

-(void)getDataForOffSet:(NSString *)offset{
   
 //server call ... get request from server call
//            if (resultDict) {
//                NSArray *array = from server;
//                if (array && array.count > 19 ) {
//                    scrollOffSet = 20;
//                }
//                [self.dataArray addObjectsFromArray:array];
//                if (self.dataArray && self.dataArray.count > 0) {
//                }else{
    //                   //  NoDataFound
  //                }
//                [ reloadData tableview];
//                
//            //
    
}

@end
