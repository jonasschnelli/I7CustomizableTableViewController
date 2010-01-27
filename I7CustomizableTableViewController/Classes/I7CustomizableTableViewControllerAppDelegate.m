//
//  I7CustomizableTableViewControllerAppDelegate.m
//  I7CustomizableTableViewController
//
//  Created by Jonas Schnelli on 27.01.10.
//  Copyright include7 AG 2010. All rights reserved.
//

#import "I7CustomizableTableViewControllerAppDelegate.h"


@implementation I7CustomizableTableViewControllerAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
	
	[window addSubview:[navigationController view]];
    [window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

