//
//  DisplayEditViewController.m
//  MyCoreDataAddressbook
//
//  Created by Umut Kanbak on 8/11/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "DisplayEditViewController.h"
#import "AppDelegate.h"

@interface DisplayEditViewController ()
{
    __weak IBOutlet UITextField *firstNameField;
    __weak IBOutlet UITextField *lastNameFiled;
    __weak IBOutlet UITextField *emailAdressField;
    __weak IBOutlet UITextField *phoneNumberField;
    __weak IBOutlet UIButton *editButton;
    __weak IBOutlet UIButton *doneButton;
   

}
- (IBAction)edit:(id)sender;
- (IBAction)done:(id)sender;


@end

@implementation DisplayEditViewController
@synthesize currentPerson;

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
    firstNameField.text=currentPerson.firstName;
    lastNameFiled.text=currentPerson.lastName;
    emailAdressField.text=currentPerson.emailAddress;
    phoneNumberField.text=currentPerson.phoneNumber;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)edit:(id)sender {
    firstNameField.enabled=YES;
    lastNameFiled.enabled=YES;
    emailAdressField.enabled=YES;
    phoneNumberField.enabled=YES;

    firstNameField.borderStyle=UITextBorderStyleRoundedRect;
    lastNameFiled.borderStyle=UITextBorderStyleRoundedRect;
    emailAdressField.borderStyle=UITextBorderStyleRoundedRect;
    phoneNumberField.borderStyle=UITextBorderStyleRoundedRect;
    
    editButton.hidden=YES;
    doneButton.hidden=NO;
}

- (IBAction)done:(id)sender {
    firstNameField.enabled=NO;
    lastNameFiled.enabled=NO;
    emailAdressField.enabled=NO;
    phoneNumberField.enabled=NO;
    
    firstNameField.borderStyle=UITextBorderStyleNone;
    lastNameFiled.borderStyle=UITextBorderStyleNone;
    emailAdressField.borderStyle=UITextBorderStyleNone;
    phoneNumberField.borderStyle=UITextBorderStyleNone;
    
    editButton.hidden=NO;
    doneButton.hidden=YES;
    
    currentPerson.firstName=firstNameField.text;
    currentPerson.lastName=lastNameFiled.text;
    currentPerson.emailAddress=emailAdressField.text;
    currentPerson.phoneNumber=phoneNumberField.text;
    
    AppDelegate *myApp=(AppDelegate *)[[UIApplication sharedApplication]delegate];
    [myApp saveContext];

}
@end
