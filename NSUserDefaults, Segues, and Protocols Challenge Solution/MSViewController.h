//
//  MSViewController.h
//  NSUserDefaults, Segues, and Protocols Challenge Solution
//
//  Created by Mat Sletten on 5/5/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MSViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *usernameText;
@property (strong, nonatomic) IBOutlet UILabel *passwordText;

- (IBAction)backButtonPressed:(UIButton *)sender;
@end
