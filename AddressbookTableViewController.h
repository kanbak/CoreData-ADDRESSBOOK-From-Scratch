//
//  AddressbookTableViewController.h
//  MyCoreDataAddressbook
//
//  Created by Umut Kanbak on 8/11/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddPersonViewController.h"


@interface AddressbookTableViewController : UITableViewController <AddPersonViewControllerDelegate, NSFetchedResultsControllerDelegate>


@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

@end
