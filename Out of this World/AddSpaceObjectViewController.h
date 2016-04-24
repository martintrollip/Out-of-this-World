//
//  AddSpaceObjectViewController.h
//  Out of this World
//
//  Created by Martin on 2016/04/24.
//  Copyright © 2016 Martin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpaceObject.h" 

//Naming convention: nameOfClass+delegate
@protocol AddSpaceObjectViewControllerDelegate <NSObject>

@required
-(void)addSpaceObject:(SpaceObject *)spaceObject; //on add click which pass a spaceobject back
-(void)didCancel; //on cancel click

@end

@interface AddSpaceObjectViewController : UIViewController

@property(weak,nonatomic) id <AddSpaceObjectViewControllerDelegate> delegate;

@end
