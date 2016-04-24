//
//  OuterSpaceTableViewController.h
//  Out of this World
//
//  Created by Martin on 2016/03/27.
//  Copyright © 2016 Martin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddSpaceObjectViewController.h"

@interface OuterSpaceTableViewController : UITableViewController <AddSpaceObjectViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *planets;
@property (nonatomic, strong) NSMutableArray *addedSpaceObjects;



@end
