//
//  SpaceObject.h
//  Out of this World
//
//  Created by Martin on 2016/03/27.
//  Copyright © 2016 Martin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SpaceObject : NSObject

@property (strong,nonatomic) NSString *name;
@property (nonatomic) float gravitationalForce;
@property (nonatomic) float diameter;
@property (nonatomic) float yearLength;
@property (nonatomic) float dayLength;
@property (nonatomic) float templ;
@property (nonatomic) int numberOfMoons;
@property (strong, nonatomic) NSString *nickname;
@property (strong, nonatomic) NSString *interestingFact;

@property (strong, nonatomic) UIImage *image;

-(id)initWithData:(NSDictionary *)data andImage:(UIImage *)image;

@end
