//
//  SecondViewController.m
//  VCExample
//
//  Created by Veronica Schade on 3/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@implementation SecondViewController
ThirdViewController *thirdViewController;

@synthesize selectedDatePicker, dateLabel;

    // To flip page view to home
-(IBAction) btnReturn:(id) sender { 
    [UIView beginAnimations:@"flipping view" context:nil];
    [UIView setAnimationDuration:1];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view.superview cache:YES];
    [self.view removeFromSuperview];
    [UIView commitAnimations];
}

    // To flip page view to the third view
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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    // Display the date and time selected from the previous view
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"MMM dd, yyyy HH:mm"];
                      
    
    NSString *label = [[NSString alloc] 
                       initWithFormat: @"Date and time selected: %@", 
                       [formatter stringFromDate:self.selectedDatePicker.date]];
    
    dateLabel.text = label; 

    
    /*UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Date and time selected"
                          message:[formatter stringFromDate:selectedDatePicker.date]
                          delegate:self
                          cancelButtonTitle:@"OK"
                          otherButtonTitles:nil];
    [alert show];*/
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
