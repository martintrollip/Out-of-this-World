//
//  SpaceDataViewController.h
//  Out of this World
//
//  Created by Martin on 2016/03/28.
//  Copyright © 2016 Martin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpaceObject.h"


@interface SpaceDataViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) SpaceObject *spaceObject;

@end
