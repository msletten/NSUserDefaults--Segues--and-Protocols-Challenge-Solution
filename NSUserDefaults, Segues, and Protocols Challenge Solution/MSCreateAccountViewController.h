//
//  MSCreateAccountViewController.h
//  NSUserDefaults, Segues, and Protocols Challenge Solution
//
//  Created by Mat Sletten on 5/5/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import <UIKit/UIKit.h>

#define USER_NAME @"username"
#define USER_PASSWORD @"password"

@protocol MSCreateAccountViewControllerDelegate <NSObject>

@required
- (void)didCreateAccount;
- (void)didCancel;

@end

@interface MSCreateAccountViewController : UIViewController

@property (weak, nonatomic) id <MSCreateAccountViewControllerDelegate> createDelegate;

@property (strong, nonatomic) IBOutlet UITextField *usernameCreate;
@property (strong, nonatomic) IBOutlet UITextField *passwordCreate;
@property (strong, nonatomic) IBOutlet UITextField *passwordConfirm;

- (IBAction)cancelButtonPressed:(UIButton *)sender;
- (IBAction)createAccountButtonPressed:(UIButton *)sender;

@end
