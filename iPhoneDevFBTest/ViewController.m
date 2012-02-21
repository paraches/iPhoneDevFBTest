//
//  ViewController.m
//  iPhoneDevFBTest
//
//  Created by 手代木 伸一 on 12/02/01.
//  Copyright (c) 2012年 paraches. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (void)dialogCompleteWithUrl:(NSURL *)url {
	NSLog(@"dialogCompleteWithUrl");
}

- (void)dialogDidComplete:(FBDialog *)dialog {
	NSLog(@"publish successfully");
}

- (void)dialogDidNotComplete:(FBDialog *)dialog {
    NSLog(@"Dialog dismissed.");
}

- (void)dialog:(FBDialog*)dialog didFailWithError:(NSError *)error {
    NSLog(@"Error message: %@", [[error userInfo] objectForKey:@"error_msg"]);
}

- (void)userDidGrantPermission {
	NSLog(@"userDidGrantPermission");
}

- (void)userDidNotGrantPermission {
    NSLog(@"Extended permissions not granted.");
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

	AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
	[appDelegate.facebook dialog:@"feed" andDelegate:self];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
