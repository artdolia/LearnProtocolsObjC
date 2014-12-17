//
//  ADShark.m
//  Lesson7HW
//
//  Created by A D on 12/10/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "ADShark.h"

@implementation ADShark

@synthesize bride = _bride;

#pragma mark - ADSwimmers -
@synthesize waterType = _waterType;

-(NSString *) swim{
    NSString *swimming = [NSString stringWithFormat:@"Swimming? Me? I am the fighter!"];
    return swimming;
}



@end
