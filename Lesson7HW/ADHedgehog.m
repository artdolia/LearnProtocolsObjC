//
//  ADHedgehog.m
//  Lesson7HW
//
//  Created by A D on 12/10/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "ADHedgehog.h"

@implementation ADHedgehog

@synthesize bride = _bride;

#pragma  mark - ADJumpers -
@synthesize maxJumpHeight = _maxJumpHeight;
@synthesize jumpType = _jumpType;

-(NSString *) jump{
    NSString * jumping = [NSString stringWithFormat:@"Jumping like a PRO!"];
    return  jumping;
}

-(NSString *) getGoldMedal{
    NSString * medal = [NSString stringWithFormat:@"No more room to store the medals!"];
    return medal;
}

#pragma  mark - ADSwimmers -
@synthesize waterType = _waterType;
@synthesize maxTitle = _maxTitle;

-(NSString*) swim{
    NSString *swimming = [NSString stringWithFormat:@"I'm da best swimmer!"];
    return swimming;
}

-(NSString *) dive{
    NSString *diving = [NSString stringWithFormat:@"Diving even better than swimming!"];
    return diving;
}


#pragma  mark - ADRunners -
@synthesize distance = _distance;
@synthesize speed = _speed;

-(NSString *) run{
    NSString *running = [NSString stringWithFormat:@"Call me RunnerHog!"];
    return running;
}

-(NSString *) celebrate{
    NSString *celebration = [NSString stringWithFormat:@"Here is my shampaing fountain!"];
    return celebration;
}


@end
