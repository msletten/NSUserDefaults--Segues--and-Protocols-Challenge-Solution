//
//  MSSignInViewController.h
//  NSUserDefaults, Segues, and Protocols Challenge Solution
//
//  Created by Mat Sletten on 5/5/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSCreateAccountViewController.h"

@interface MSSignInViewController : UIViewController <MSCreateAccountViewControllerDelegate>


@property (strong, nonatomic) IBOutlet UITextField *usernameSignIn;
@property (strong, nonatomic) IBOutlet UITextField *passwordSignIn;

- (IBAction)createAccount:(UIBarButtonItem *)sender;
- (IBAction)loginButtonPressed:(UIButton *)sender;
@end
