//
//  NavigationTopViewController.m
//  ECSlidingViewController
//
//  Created by Michael Enriquez on 2/13/12.
//  Copyright (c) 2012 EdgeCase. All rights reserved.
//

#import "NavigationTopViewController.h"

@implementation NavigationTopViewController

- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
  
  if (![self.slidingViewController.underLeftViewController isKindOfClass:[UITableViewController class]]) {
    self.slidingViewController.underLeftViewController  = [self.storyboard instantiateViewControllerWithIdentifier:@"Menu"];
  }
  
  if (![self.slidingViewController.underRightViewController isKindOfClass:[UnderRightViewController class]]) {
    self.slidingViewController.underRightViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"UnderRight"];
  }
  
  // The pan gesture is added automatically to navigation controllers
}

@end
