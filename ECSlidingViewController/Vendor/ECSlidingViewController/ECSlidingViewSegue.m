//
//  ECSlidingViewSegue.m
//  ECSlidingViewController
//
//  Created by Jonathan Bennett on 2012-06-09.
//
//

#import "ECSlidingViewSegue.h"
#import "ECSlidingViewController.h"

@implementation ECSlidingViewSegue

- (void)perform
{
    UIViewController *source = (UIViewController *)self.sourceViewController;
    UIViewController *destination = (UIViewController *)self.destinationViewController;
    ECSlidingViewController *slide = source.slidingViewController;
    
    // 
    ECSide side = (source == slide.underLeftViewController ||
                    source.navigationController == slide.underLeftViewController ||
                    source.tabBarController == slide.underLeftViewController) ? ECRight : ECLeft;
    
    [slide anchorTopViewOffScreenTo:side animations:nil onComplete:^{
        CGRect frame = source.slidingViewController.topViewController.view.frame;
        slide.topViewController = destination;
        slide.topViewController.view.frame = frame;
        [slide resetTopView];
        
        [destination.view addGestureRecognizer:slide.panGesture];
    }];
}

@end
