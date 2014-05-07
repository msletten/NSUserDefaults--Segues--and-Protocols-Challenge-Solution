//
//  MSCreateAccountViewController.m
//  NSUserDefaults, Segues, and Protocols Challenge Solution
//
//  Created by Mat Sletten on 5/5/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import "MSCreateAccountViewController.h"

@interface MSCreateAccountViewController ()

@end

@implementation MSCreateAccountViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelButtonPressed:(UIButton *)sender
{
    [self.createDelegate didCancel];
}
//Below we use the delegate we created to recognize if the user entered a username, password, and confirmation correctly to navigate to the correct view controller.
- (IBAction)createAccountButtonPressed:(UIButton *)sender
{
    if ((self.usernameCreate.text.length !=0) && (self.passwordCreate.text.length !=0) && [self.passwordCreate.text isEqualToString:self.passwordConfirm.text])
    {
    [[NSUserDefaults standardUserDefaults] setObject:self.usernameCreate.text forKey:USER_NAME];
    [[NSUserDefaults standardUserDefaults] setObject:self.passwordCreate.text forKey:USER_PASSWORD];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    [self.createDelegate didCreateAccount];
    }
    else
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Your Username or Password is incorrect" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
        [alertView show];
    }
}
@end
