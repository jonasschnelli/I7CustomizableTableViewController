//
//  ACustomTableViewCell.m
//  I7CustomizableTableViewController
//
//  Created by Jonas Schnelli on 27.01.10.
//  Copyright 2010 include7 AG. All rights reserved.
//

#import "ACustomTableViewCell.h"

/*
 
 Example subclass of the customizable table view controller
 
 */

@implementation ACustomTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
	self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
	if (self != nil) {
		self.textLabel.shadowOffset = CGSizeMake(1,1);
		self.textLabel.shadowColor = [UIColor whiteColor];
	}
	
	return self;
}

@end
