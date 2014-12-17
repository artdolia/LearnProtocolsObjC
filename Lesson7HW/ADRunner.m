//
//  ADRunner.m
//  Lesson7HW
//
//  Created by A D on 12/10/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "ADRunner.h"

@implementation ADRunner

#pragma  mark - ADRunners -
@synthesize distance = _distance;
@synthesize speed = _speed;
@synthesize name = _name;

- (NSString*) run{
    
    NSString* running = [NSString stringWithFormat:@"Running!"];
    return running;
    
}

- (NSString*) celebrate{
    
    NSString* yahoo = [NSString stringWithFormat:@"I am the winner!"];
    return yahoo;
}


@end
