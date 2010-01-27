//
//  I7CustomizableTableViewCell.h
//  I7CustomizableTableViewController
//
//  Created by Jonas Schnelli on 27.01.10.
//  Copyright 2010 include7 AG. All rights reserved.
//

#import <Foundation/Foundation.h>

enum I7CustimizableTableViewCellPosition {
	I7CustimizableTableViewCellPositionTop,
	I7CustimizableTableViewCellPositionMiddle,
	I7CustimizableTableViewCellPositionBottom,
	I7CustimizableTableViewCellPositionSingle
};

@interface I7CustomizableTableViewCell : UITableViewCell {
	enum I7CustimizableTableViewCellPosition position;
	CGSize oldShadow;
}

@property (assign) enum I7CustimizableTableViewCellPosition position;

@end
