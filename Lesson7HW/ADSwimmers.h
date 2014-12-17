//
//  ADSwimmers.h
//  Lesson7HW
//
//  Created by A D on 12/10/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ADSwimmers <NSObject>

typedef enum {
    ADWaterTypeSalty,
    ADWaterTypeFresh
}ADWaterType;

@property (assign, nonatomic) ADWaterType waterType;

-(NSString *) swim;

@optional
@property (strong, nonatomic) NSString * maxTitle;
@property (strong, nonatomic) NSString * bride;
@property (strong, nonatomic) NSString * name;
-(NSString *) dive;

@end
