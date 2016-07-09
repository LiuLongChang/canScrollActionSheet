//
//  DopScrollableActionSheet.h
//  DopScrollableActionSheet
//
//  Created by 刘隆昌 on 15-1-2.
//  Copyright (c) 2015年 刘隆昌. All rights reserved.
//

#import <UIKit/UIKit.h>


@class DopAction;

@interface DopScrollableActionSheet : UIView



-(instancetype)initWithActionArray:(NSArray*)actions;
-(void)show;
-(void)dismiss;


@end





@interface DOPAction : NSObject

@property(nonatomic,copy)NSString * iconName;
@property(nonatomic,copy)NSString * actionName;
@property(nonatomic,copy)void(^handler)(void);


-(instancetype)initWithName:(NSString*)name iconName:(NSString*)iconName handler:(void(^)(void))handler;



@end