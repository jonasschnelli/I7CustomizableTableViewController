//
//  ATableViewControllerSubclass.m
//  I7CustomizableTableViewController
//
//  Created by Jonas Schnelli on 27.01.10.
//  Copyright 2010 include7 AG. All rights reserved.
//

/*
 
	Example subclass of the customizable table view controller
 
 */

#import "ATableViewControllerSubclass.h"


@implementation ATableViewControllerSubclass



- (void)viewDidLoad {
	self.backgroundImage = [UIImage imageNamed:@"backgroundimage.png"];
	
	/*
	 create some content
	 */
	
	data = [[NSMutableArray arrayWithObjects:
			 [NSMutableArray arrayWithObjects:@"Section0 Row0",@"Section0 Row1",@"Section0 Row2", nil],
			 [NSMutableArray arrayWithObjects:@"Section1 Row0", nil],
			 nil
			 ]
			retain];

	/*
	 create a header
	 */
	
	header0 = [[UIView alloc] initWithFrame:CGRectMake(0,0,200,20)];
	UILabel *tempLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,15,200,20)];
	tempLabel.font = [UIFont boldSystemFontOfSize:16];
	tempLabel.textColor = [UIColor whiteColor];
	tempLabel.backgroundColor = [UIColor clearColor];
	tempLabel.text = @"Servers";
	[header0 addSubview:tempLabel];
	[tempLabel release];
	
}



#pragma mark UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)atableView
{
	return data.count;
}

- (NSInteger)tableView:(UITableView *)aTableView numberOfRowsInSection:(NSInteger)section
{
	return [[data objectAtIndex:section] count];
}


 - (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
	 if(section == 0) {
		 return header0.frame.size.height+30;
	 }
	 return 0;
 }
 
 - (UIView *) tableView:(UITableView *)aTableView viewForHeaderInSection:(NSInteger)section {
	 return header0;
 }



- (UITableViewCell *)tableView:(UITableView *)tv cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *CellIdentifier = @"cell";
	
	ACustomTableViewCell *cell = (ACustomTableViewCell *)[tv dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
		cell = [[[ACustomTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier] autorelease];
		
	}
	
	/*
	 Ugly but theres no other (non private api) way to say to a tablecell in which position the cell is
	 */
	cell.position = I7CustimizableTableViewCellPositionSingle;
	
	if([[data objectAtIndex:indexPath.section] count] > 1) {
		if(indexPath.row == 0) {
			cell.position = I7CustimizableTableViewCellPositionTop;
		}
		else if(indexPath.row < [[data objectAtIndex:indexPath.section] count]-1) {
			cell.position = I7CustimizableTableViewCellPositionMiddle;
		}
		else {
			cell.position = I7CustimizableTableViewCellPositionBottom;
		}
	}
	
	
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	cell.textLabel.text = @"Add Server";
	
	return cell;
	
	
}



#pragma mark UITableViewDelegate
- (void)tableView:(UITableView *)aTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	[aTableView deselectRowAtIndexPath:indexPath animated:YES];
}


- (void) dealloc
{
	[data release];
	[header0 release];
	[super dealloc];
}



@end
