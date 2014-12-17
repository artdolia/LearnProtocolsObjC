//
//  ADSwimmer.m
//  Lesson7HW
//
//  Created by A D on 12/10/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "ADSwimmer.h"

@implementation ADSwimmer


#pragma mark - ADSwimmers -

@synthesize waterType = _waterType;
@synthesize name = _name;

-(NSString *) swim{
    NSString *swimming = [NSString stringWithFormat:@"I am swimming!"];
    return swimming;
}

-(NSString*) dive{
    NSString *diving = [NSString stringWithFormat:@"I am diving in the bath!"];
    return diving;
    
}


@end
