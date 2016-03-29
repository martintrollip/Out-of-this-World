//
//  SpaceImageViewController.h
//  Out of this World
//
//  Created by Martin on 2016/03/28.
//  Copyright © 2016 Martin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpaceObject.h"

@interface SpaceImageViewController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) SpaceObject *spaceObject;

@end
