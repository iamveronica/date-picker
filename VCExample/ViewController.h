//
//  ViewController.h
//  VCExample
//
//  Created by Veronica Schade on 3/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    // Outlet for the DatePicker view---
    IBOutlet UIDatePicker *datePicker;
}
    // Expose this outlet as a property---
@property (nonatomic, retain) UIDatePicker *datePicker;

    // Write this first to initialize the displayView action, then configure your xib and connect the button to file's owner as displayView
-(IBAction) displayView:(id) sender; 
-(IBAction) thirdView:(id) sender;

@end
