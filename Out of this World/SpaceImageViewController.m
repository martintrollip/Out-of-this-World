//
//  SpaceImageViewController.m
//  Out of this World
//
//  Created by Martin on 2016/03/28.
//  Copyright © 2016 Martin. All rights reserved.
//

#import "SpaceImageViewController.h"

@interface SpaceImageViewController ()

@end

@implementation SpaceImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //Create the UIImageView in code rather than on the story board
    self.imageView = [[UIImageView alloc] initWithImage:self.spaceObject.image];
    
    //Set the scrollable area to be the same size as the image
    self.scrollView.contentSize = self.imageView.frame.size;
    
    //Add the image onto the scrollview
    [self.scrollView addSubview:self.imageView];
    
    //Set the delegate of the scroll view to this class
    self.scrollView.delegate = self;
    
    //Set the zooming parameters (by default they are the same)
    self.scrollView.maximumZoomScale = 3.0;
    self.scrollView.minimumZoomScale = 0.5;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.imageView;
}

@end
