//
//  ADDeveloper.m
//  Lesson7HW
//
//  Created by A D on 12/10/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "ADDeveloper.h"

@implementation ADDeveloper

#pragma mark - ADJumpers -

@synthesize jumpType = _jumpType;
@synthesize maxJumpHeight;
@synthesize name = _name;

-(NSString*) jump{
    NSString* jump = [NSString stringWithFormat:@"Jumping on my chair!"];
    return  jump;
}

@end
