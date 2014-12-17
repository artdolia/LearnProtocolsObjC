//
//  ADAppDelegate.m
//  Lesson7HW
//
//  Created by A D on 12/10/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "ADAppDelegate.h"
#import "ADRunner.h"
#import "ADDeveloper.h"
#import "ADSwimmer.h"
#import "ADHedgehog.h"
#import "ADShark.h"
#import "ADLazybones.h"

@implementation ADAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    ADRunner *runner = [[ADRunner alloc] init];
    ADDeveloper *developer = [[ADDeveloper alloc] init];
    ADSwimmer *swimmer = [[ADSwimmer alloc] init];
    ADHedgehog *hedgehog = [[ADHedgehog alloc] init];
    ADShark *shark = [[ADShark alloc] init];
    ADLazybones *lazy = [[ADLazybones alloc] init];
    
    runner.name = @"Runner";
    runner.distance = @"Half marathon";
    runner.speed = 10.1f;

    developer.name = @"Developer";
    developer.jumpType = @"On-chair";
    developer.maxJumpHeight = 3.14f;
    
    swimmer.name = @"Swimmer";
    swimmer.waterType = ADWaterTypeSalty;
    
    hedgehog.bride = @"Regular Hedge";
    hedgehog.maxJumpHeight = 4;
    hedgehog.jumpType = @"Pole Vault";
    hedgehog.waterType = ADWaterTypeFresh;
    hedgehog.maxTitle = @"Night Varior";
    hedgehog.distance = @"Double Marathon";
    hedgehog.speed = 299792458;
    
    shark.bride = @"Fighter";
    shark.waterType = ADWaterTypeSalty;
    
    lazy.bride = @"Live-me-alone";

    NSArray * mightyHandful = [NSArray arrayWithObjects:runner, developer, swimmer, hedgehog, shark, lazy, nil];

    for(id <ADJumpers, ADSwimmers, ADRunners> obj in mightyHandful){
        
        if([obj conformsToProtocol:@protocol(ADJumpers)]){
            NSLog(@"My name is %@", [obj isKindOfClass:[ADHuman class]] ? obj.name : obj.bride);
            NSLog(@"I can jump like %@ up to %1.2f m.", obj.jumpType, obj.maxJumpHeight);
            NSLog(@"Jumping - %@", [obj jump]);
            
            //checking for optional method of ADJumpers
            if([obj respondsToSelector:@selector(getGoldMedal)]){
                NSLog(@"Medal - %@", [obj getGoldMedal]);
            }
        }
        
        if([obj conformsToProtocol:@protocol(ADSwimmers)]){
            NSLog(@"My name is %@", [obj isKindOfClass:[ADHuman class]] ? obj.name : obj.bride);
            NSLog(@"I can swim in %@ water.", obj.waterType ? @"Salty" : @"Fresh");
            NSLog(@"Swimming - %@", [obj swim]);
            
            //checking for optional method od ADSwimmers
            if([obj respondsToSelector:@selector(dive)]){
                NSLog(@"Dive - %@", [obj dive]);
                
            //checking for optional property of ADSwimmers using property getter
            }if([obj respondsToSelector:@selector(maxTitle)]){
                NSLog(@"My achivement - %@", obj.maxTitle);
            }
        }
        
        if([obj conformsToProtocol:@protocol(ADRunners)]){
            
            NSLog(@"My name is %@", [obj isKindOfClass:[ADHuman class]] ? obj.name : obj.bride);
            NSLog(@"I can run %@ with speed - %1.2f.", obj.distance, obj.speed);
            NSLog(@"Running - %@", [obj run]);
            
            //checking for optional method of ADRunners
            if([obj respondsToSelector:@selector(celebrate)]){
                NSLog(@"Celebrate - %@", [obj celebrate]);
            }
        }
        
        // check if the object is the lazy one
        if(![obj conformsToProtocol:@protocol(ADRunners)] &&
            ![obj conformsToProtocol:@protocol(ADSwimmers)] &&
            ![obj conformsToProtocol:@protocol(ADJumpers)]){
            //print the name of the object, which doesn't respond to the mentioned above protocols
            NSLog(@"Does nothing name - %@", [obj isKindOfClass:[ADHuman class]] ? obj.name : obj.bride);
        }
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
