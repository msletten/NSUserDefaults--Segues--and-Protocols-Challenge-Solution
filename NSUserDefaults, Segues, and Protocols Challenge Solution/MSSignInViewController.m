//
//  MSSignInViewController.m
//  NSUserDefaults, Segues, and Protocols Challenge Solution
//
//  Created by Mat Sletten on 5/5/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import "MSSignInViewController.h"
#import "MSViewController.h"

@interface MSSignInViewController ()

@end

@implementation MSSignInViewController

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[MSCreateAccountViewController class]])
    {
        MSCreateAccountViewController *createAccountVC = segue.destinationViewController;
        createAccountVC.createDelegate = self;
    }
}

//perform segues with button identifiers below. Set identifier in storyboard attribute inspector.
- (IBAction)createAccount:(UIBarButtonItem *)sender
{
    [self performSegueWithIdentifier:@"toCreateAccountVCSegue" sender:sender];
}

- (IBAction)loginButtonPressed:(UIButton *)sender
{
    NSString *username = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    NSString *passwrod = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
    if ([self.usernameSignIn.text isEqualToString:username] && [self.passwordSignIn.text isEqualToString:passwrod])
        {
            [self performSegueWithIdentifier:@"toViewControllerSegue" sender:sender];
        }
    else
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Your password and username combination is incorrect" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alertView show];
    }
}

#pragma  mark - MSCreateAccountViewControllerDelegate

- (void) didCreateAccount
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void) didCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
