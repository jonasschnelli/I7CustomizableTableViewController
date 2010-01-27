//
//  ATableViewControllerSubclass.h
//  I7CustomizableTableViewController
//
//  Created by Jonas Schnelli on 27.01.10.
//  Copyright 2010 include7 AG. All rights reserved.
//	

#import <Foundation/Foundation.h>
#import "I7CustomizableTableViewController.h"
#import "ACustomTableViewCell.h"


@interface ATableViewControllerSubclass : I7CustomizableTableViewController {
	NSMutableArray *data;
	UIView *header0;
}

@end
