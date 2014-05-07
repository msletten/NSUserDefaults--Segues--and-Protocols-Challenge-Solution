//
//  MSViewController.m
//  NSUserDefaults, Segues, and Protocols Challenge Solution
//
//  Created by Mat Sletten on 5/5/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import "MSViewController.h"
#import "MSCreateAccountViewController.h"

@interface MSViewController ()

@end

@implementation MSViewController

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
    self.usernameText.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    self.passwordText.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//use the below to set a simple modal back segue using a UI Button
- (IBAction)backButtonPressed:(UIButton *)sender
{
    [self performSegueWithIdentifier:@"backToSignIn" sender:sender];
}
@end
