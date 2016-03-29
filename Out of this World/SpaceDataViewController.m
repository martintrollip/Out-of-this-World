
//
//  SpaceDataViewController.m
//  Out of this World
//
//  Created by Martin on 2016/03/28.
//  Copyright © 2016 Martin. All rights reserved.
//

#import "SpaceDataViewController.h"

@interface SpaceDataViewController ()

@end

@implementation SpaceDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blackColor];
    self.tableView.backgroundColor = [UIColor clearColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //8 is the number of properties in the spaceObject state
    return 8;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"DataCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"Nickname:";
            cell.detailTextLabel.text = self.spaceObject.nickname;
            break;
        case 1:
            cell.textLabel.text = @"Gravitational Force";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f",self.spaceObject.gravitationalForce];
            break;
        case 2:
            cell.textLabel.text = @"Diameter (km):";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f",self.spaceObject.diameter];
            break;
        case 3:
            cell.textLabel.text = @"Length of Year (days):";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f",self.spaceObject.yearLength];
            break;
        case 4:
            cell.textLabel.text = @"Length of Day (hours):";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f",self.spaceObject.dayLength];
            break;
        case 5:
            cell.textLabel.text = @"Temperature (Celsius):";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f",self.spaceObject.templ];
            break;
        case 6:
            cell.textLabel.text = @"Number of moons:";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i",self.spaceObject.numberOfMoons];
            break;
        case 7:
            cell.textLabel.text = @"Interesting fact:";
            cell.detailTextLabel.text = self.spaceObject.interestingFact;
            break;
        default:
            break;
    }
    
    return cell;
}

#pragma mark - UITableViewDelegate methods
-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    
}

@end
