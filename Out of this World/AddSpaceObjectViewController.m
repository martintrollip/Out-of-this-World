//
//  AddSpaceObjectViewController.m
//  Out of this World
//
//  Created by Martin on 2016/04/24.
//  Copyright © 2016 Martin. All rights reserved.
//

#import "AddSpaceObjectViewController.h"

@interface AddSpaceObjectViewController ()
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *nickNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *diameterTextField;
@property (strong, nonatomic) IBOutlet UITextField *temperaturTextField;
@property (strong, nonatomic) IBOutlet UITextField *numberOfMoonsTextfield;
@property (strong, nonatomic) IBOutlet UITextField *interestingFactTextField;

@end

@implementation AddSpaceObjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //To set the background with an image from a JPEG
    //UIImage * orionImage = [UIImage imageNames:@Örion.jpg"];
    //self.view.backgroundColor = [UIColor colorWithPatternImage:orionImage];
}
- (IBAction)cancelClicked:(UIButton *)sender {
    [self.delegate didCancel];
    //calls the method as implemented in the delegates implementation
}
- (IBAction)addClicked:(id)sender {
    SpaceObject *newSpaceObject = [self retrunNewSpaceObject];
    [self.delegate addSpaceObject:newSpaceObject];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(SpaceObject *)retrunNewSpaceObject{
    SpaceObject *addedSpaceObject = [[SpaceObject alloc] init];
    
    addedSpaceObject.name = self.nameTextField.text;
    addedSpaceObject.nickname = self.nickNameTextField.text;
    addedSpaceObject.diameter = [self.diameterTextField.text floatValue];
    addedSpaceObject.templ = [self.temperaturTextField.text floatValue];
    addedSpaceObject.numberOfMoons = [self.numberOfMoonsTextfield.text intValue];
    addedSpaceObject.interestingFact = self.interestingFactTextField.text;
    
    return addedSpaceObject;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
