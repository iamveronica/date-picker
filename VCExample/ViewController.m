//
//  ViewController.m
//  VCExample
//
//  Created by Veronica Schade on 3/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

    // Import the header file for the view controller
#import "SecondViewController.h"
#import "ThirdViewController.h"

@implementation ViewController
SecondViewController *secondViewController;
ThirdViewController *thirdViewController;

@synthesize datePicker;



    // Add this here after your add a button to the xib and connect button to file's owner as displayView
    // This allows the screen to flip when the button is pressed
-(IBAction) displayView:(id) sender{
    secondViewController = [[SecondViewController alloc]
                            initWithNibName:@"SecondViewController"
                            bundle:nil];

    // Set the property of the second view with the DatePicker view in the current view
    secondViewController.selectedDatePicker = datePicker;
    [UIView beginAnimations:@"flipping view" context:nil]; 
    [UIView setAnimationDuration:1];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut]; 
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
    [self.view addSubview:secondViewController.view];
    [UIView commitAnimations];
}

    // Set the property of the third view 
-(IBAction) thirdView:(id) sender{
    thirdViewController = [[ThirdViewController alloc]
                           initWithNibName:@"ThirdViewController"
                           bundle:nil];
    [UIView beginAnimations:@"flipping view" context:nil];
    [UIView setAnimationDuration:1];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view.superview cache:YES];
    [self.view addSubview:thirdViewController.view];
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
