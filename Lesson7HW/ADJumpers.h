//
//  ADJumpers.h
//  Lesson7HW
//
//  Created by A D on 12/10/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ADJumpers <NSObject>

@property (assign, nonatomic) CGFloat maxJumpHeight;
@property (strong, nonatomic) NSString *jumpType;

-(NSString *) jump;

@optional
@property (strong, nonatomic) NSString * bride;
@property (strong, nonatomic) NSString * name;

-(NSString *) getGoldMedal;


@end
