//
//  AddPersonViewController.m
//  MyCoreDataAddressbook
//
//  Created by Umut Kanbak on 8/11/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "AddPersonViewController.h"

@interface AddPersonViewController ()
{
    __weak IBOutlet UITextField *firstNameField;
    __weak IBOutlet UITextField *lastNameField;
    __weak IBOutlet UITextField *emailAddressField;
    __weak IBOutlet UITextField *phoneNumberField;
    
    
    
}
- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;



@end

@implementation AddPersonViewController

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
    firstNameField.text=[self.currentPerson firstName];
    lastNameField.text=[self.currentPerson lastName];
    emailAddressField.text=[self.currentPerson emailAddress];
    phoneNumberField.text=[self.currentPerson phoneNumber];
    
	// Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
    [self.delegate addPersonViewControllerDidCancel:[self currentPerson]];
}

- (IBAction)save:(id)sender {
    self.currentPerson.firstName=firstNameField.text;
    self.currentPerson.lastName=lastNameField.text;
    self.currentPerson.emailAddress=emailAddressField.text;
    self.currentPerson.phoneNumber=phoneNumberField.text;
    [self.delegate addPersonViewControllerDidSave];

}
@end
