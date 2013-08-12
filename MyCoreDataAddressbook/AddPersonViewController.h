//
//  AddPersonViewController.h
//  MyCoreDataAddressbook
//
//  Created by Umut Kanbak on 8/11/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@protocol AddPersonViewControllerDelegate;

@interface AddPersonViewController : UIViewController

@property (nonatomic, strong) Person *currentPerson;

@property (nonatomic, weak) id<AddPersonViewControllerDelegate> delegate;

@end

@protocol AddPersonViewControllerDelegate

-(void)addPersonViewControllerDidSave;
-(void)addPersonViewControllerDidCancel:(Person *)personToDelete;

@end