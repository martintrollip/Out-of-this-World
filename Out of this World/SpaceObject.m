//
//  SpaceObject.m
//  Out of this World
//
//  Created by Martin on 2016/03/27.
//  Copyright © 2016 Martin. All rights reserved.
//

#import "SpaceObject.h"
#import "AstronomicalData.h"

@implementation SpaceObject

-(id)init{
    //The initialisation is passed to our new method
    self = [self initWithData:nil andImage:nil];
    return self;
}

-(id)initWithData:(NSDictionary *)data andImage:(UIImage *)image{
    self = [super init];
    
    self.name = data[PLANET_NAME];
    self.gravitationalForce = [data[PLANET_GRAVITY] floatValue];
    self.diameter = [data[PLANET_DIAMETER] floatValue];
    self.yearLength = [data[PLANET_YEAR_LENGTH] floatValue];
    self.dayLength = [data[PLANET_DAY_LENGTH] floatValue];
    self.templ = [data[PLANET_TEMPERATURE] floatValue];
    self.dayLength = [data[PLANET_DAY_LENGTH] integerValue];
    self.nickname = data[PLANET_NICKNAME];
    self.interestingFact = data[PLANET_INTERESTING_FACT];
    
    self.image = image;
    
    return self;
}

@end
