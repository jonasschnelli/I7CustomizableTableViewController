//
//  I7CustomizableTableViewCell.m
//  I7CustomizableTableViewController
//
//  Created by Jonas Schnelli on 27.01.10.
//  Copyright 2010 include7 AG. All rights reserved.
//

#import "I7CustomizableTableViewCell.h"


@implementation I7CustomizableTableViewCell


- (void)setPosition:(enum I7CustimizableTableViewCellPosition)aPosition {
	
	NSString *imageName;
	switch (aPosition) {
		case I7CustimizableTableViewCellPositionTop:
			imageName = @"customcell_background_top";
			break;
		case I7CustimizableTableViewCellPositionBottom:
			imageName = @"customcell_background_bottom";
			break;
		case I7CustimizableTableViewCellPositionMiddle:
			imageName = @"customcell_background_middle";
			break;
		default:
			imageName = @"customcell_background_single";
			break;
	}
	
	self.backgroundView = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@.png", imageName]]] autorelease];
	self.selectedBackgroundView = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_.png", imageName]]] autorelease];
	
	/* it's depracted, i know. you can change this with setSelected methodes if you like */
	//self.selectedTextColor = self.textColor;
	self.textLabel.highlightedTextColor = self.textLabel.textColor;
	
	self.selectionStyle = UITableViewCellSelectionStyleGray;
}

/*
 // Possible way to disable the shadow //
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {
	
	[super setHighlighted:highlighted animated:animated];
	if(highlighted) {
		oldShadow = self.textLabel.shadowOffset;
		self.textLabel.shadowOffset = CGSizeZero;
	}
	else {
		if(oldShadow.width != 0 && oldShadow.height) {
			self.textLabel.shadowOffset = oldShadow;
		}
		
	}
}
*/


- (enum I7CustimizableTableViewCellPosition)position {
	return position;
}


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
	self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
	if (self != nil) {
		self.textLabel.backgroundColor = [UIColor clearColor];
		self.detailTextLabel.backgroundColor = [UIColor clearColor];
		
	}
	
	return self;
}


@end
