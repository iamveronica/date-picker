//
//  SecondViewController.h
//  VCExample
//
//  Created by Veronica Schade on 3/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController {
    // Object of type UIDatePicker and UILabel
    UIDatePicker *selectedDatePicker;
    IBOutlet UILabel *dateLabel;
}

@property (nonatomic, retain) UIDatePicker *selectedDatePicker; 
@property(nonatomic, retain) IBOutlet UILabel *dateLabel;

    // Action for the Return button---
-(IBAction) btnReturn:(id) sender;
-(IBAction) thirdView:(id) sender;
@end
