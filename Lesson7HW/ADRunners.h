//
//  ADRunners.h
//  Lesson7HW
//
//  Created by A D on 12/10/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ADRunners <NSObject>

@property (strong, nonatomic) NSString * distance;
@property (assign, nonatomic) CGFloat speed;

-(NSString *) run;

@optional
@property (strong, nonatomic) NSString * bride;
@property (strong, nonatomic) NSString * name;
-(NSString *) celebrate;

@end
