//
//  I7CustomizableTableViewController.m
//  I7CustomizableTableViewController
//
//  Created by Jonas Schnelli on 27.01.10.
//  Copyright 2010 include7 AG. All rights reserved.
//

#import "I7CustomizableTableViewController.h"


@implementation I7CustomizableTableViewController

@synthesize backgroundImage;

- (void)viewWillAppear:(BOOL)animated {

	/* create the backdrop */
	UIView *bgview = [[[UIImageView alloc] initWithImage:backgroundImage]autorelease];
	
	/* clear the tableviews color */
	self.tableView.backgroundColor = [UIColor clearColor];
	
	/* set the backdrop */
	[self.view.superview insertSubview:bgview atIndex:0];	
}




- (void) dealloc
{
	[backgroundImage release];
	[super dealloc];
}


@end
