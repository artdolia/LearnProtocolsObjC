//
//  ADHedgehog.h
//  Lesson7HW
//
//  Created by A D on 12/10/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "ADAnimal.h"
#import "ADJumpers.h"
#import "ADSwimmers.h"
#import "ADRunners.h"

@interface ADHedgehog : ADAnimal <ADJumpers, ADRunners, ADSwimmers>

@end
