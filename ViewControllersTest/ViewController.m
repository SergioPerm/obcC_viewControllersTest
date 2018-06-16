//
//  ViewController.m
//  ViewControllersTest
//
//  Created by Admin on 14.06.2018.
//  Copyright © 2018 SergioLechini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Loading
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"View did load");
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
        
        self.view.backgroundColor = [UIColor greenColor];
    
    else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        
        self.view.backgroundColor = [UIColor blueColor];
        
    }
    
}

- (void)loadView {
    
    [super loadView];
    
    NSLog(@"Load view");
    
}

#pragma mark - Views
- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    NSLog(@"view will appear");
    
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    NSLog(@"view did appear");
    
}

- (void)viewWillDisappear:(BOOL)animated {
    
    [super viewWillDisappear:animated];
    NSLog(@"view will disappear");
    
}

- (void)viewDidDisappear:(BOOL)animated; {
    
    [super viewDidDisappear:animated];
    NSLog(@"view did disappear");
    
}

- (void)viewWillLayoutSubviews {
    
    [super viewWillLayoutSubviews];
    NSLog(@"view will layout subviews");
    
}

- (void)viewDidLayoutSubviews {

    [super viewDidLayoutSubviews];
    NSLog(@"view did layout subvies");
    
}

#pragma mark - Orientation

- (BOOL)shouldAutorotate {

    return true;

}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {

    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskLandscapeLeft;
    
}
//
//- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
//
//}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {

    NSLog(@"willRotateToInterfaceOrientation : from %d to %d", self.interfaceOrientation  ,toInterfaceOrientation);
    
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {

    NSLog(@"didRotateFromInterfaceOrientation : from %d to %d", fromInterfaceOrientation, self.interfaceOrientation);
    
}

#pragma mark - Memory
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
