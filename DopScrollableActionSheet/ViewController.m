//
//  ViewController.m
//  DopScrollableActionSheet
//
//  Created by 刘隆昌 on 15-1-2.
//  Copyright (c) 2015年 刘隆昌. All rights reserved.
//

#import "ViewController.h"
#import "DopScrollableActionSheet.h"

@interface ViewController ()<UITableViewDelegate>
{
    
    DOPAction * action1;
    DOPAction * action2;
    DOPAction * action3;
    DOPAction * action4;
    DOPAction * action5;
    DOPAction * action6;
    DOPAction * action7;
    DOPAction * action8;
    DOPAction * action9;
    DOPAction * action10;
    DOPAction * action11;
    DOPAction * action12;
    DOPAction * action13;
    DOPAction * action14;
    DOPAction * action15;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    BOOL isIphone = [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone;
    self.title = isIphone?@"DOPscrollableActionSheet on iPhone":@"DOPScrollableActionSheet on iPad";
    
    
    
}


-(void)makeItems{
    
    if (!action1) {
        action1 = [[DOPAction alloc] initWithName:@"WeChat" iconName:@"weixin" handler:^{
            
            
        }];
    }
    if (!action2) {
        action2 = [[DOPAction alloc]initWithName:@"QQ" iconName:@"qq" handler:^{
            
            NSLog(@"Select QQ");
            
        }];
    }
    if (!action3) {
        action3 = [[DOPAction alloc] initWithName:@"WxFriends" iconName:@"wxFriends" handler:^{
            
            NSLog(@"Select WxFriends");
            
        }];
    }
    if (!action4) {
        action4 = [[DOPAction alloc]initWithName:@"Qzone" iconName:@"qzone" handler:^{
            
        }];
    }
    if (!action5) {
        action5 = [[DOPAction alloc]initWithName:@"Weibo" iconName:@"weibo" handler:^{
            
        }];
    }
    if (!action6) {
        action6 = [[DOPAction alloc]initWithName:@"Twitter" iconName:@"twitter" handler:^{
            
        }];
    }
    if (!action7) {
        action7 = [[DOPAction alloc]initWithName:@"Facebook" iconName:@"fb" handler:^{
            
        }];
    }
    if (!action8) {
        action8 = [[DOPAction alloc] initWithName:@"G+" iconName:@"g+" handler:^{
            //
        }];
    }
    if (!action9) {
        action9 = [[DOPAction alloc] initWithName:@"Pin" iconName:@"pin" handler:^{
            //
        }];
    }
    if (!action10) {
        action10 = [[DOPAction alloc] initWithName:@"Whatsapp" iconName:@"whatsapp" handler:^{
            //
        }];
    }
    if (!action11) {
        action11 = [[DOPAction alloc] initWithName:@"Line" iconName:@"line" handler:^{
            //
        }];
    }
    if (!action12) {
        action12 = [[DOPAction alloc] initWithName:@"SMS" iconName:@"sms" handler:^{
            //
        }];
    }
    if (!action13) {
        action13 = [[DOPAction alloc] initWithName:@"Email" iconName:@"email" handler:^{
            //
        }];
    }
    if (!action14) {
        action14 = [[DOPAction alloc] initWithName:@"Print" iconName:@"print" handler:^{
            //
        }];
    }
    if (!action15) {
        action15 = [[DOPAction alloc] initWithName:@"Copy" iconName:@"copy" handler:^{
            //
        }];
    }
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self makeItems];
    NSArray * actions;
    switch (indexPath.row) {
        case 0:
            
            actions = @[@"Share",@[action1,action2,action3,action4,action5]];
            
            break;
        
        case 1:
            
            actions = @[@"Share",@[action1,action2,action3,action4,action5]];
            
            break;
            
        case 2:
            
            actions = @[@"Share",
                        @[action1, action2, action3, action4, action5],@"Share",
                        @[action6, action7, action8, action9, action10, action11]];
            
            break;
            
        case 3:
            
            
            actions = @[@"Share",
                        @[action1, action2, action3, action4, action5],
                        @"Share More",
                        @[action6, action7, action8, action9, action10, action11],
                        @"Share More",
                        @[action12, action13, action14, action15]];
            
            
            break;
            
            
        default:
            break;
    }
    
    
    
    
    
    DopScrollableActionSheet * as = [[DopScrollableActionSheet alloc]initWithActionArray:actions];
    [as show];
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 4;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
