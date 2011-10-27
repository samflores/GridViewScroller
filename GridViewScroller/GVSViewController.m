//
//  GVSViewController.m
//  GridViewScroller
//
//  Created by Samuel Flores on 10/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "GVSViewController.h"
#import "GVSViewPage.h"

@implementation GVSViewController

@synthesize scroller=_scroller;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    for (int i = 0; i < NUMBER_OF_PAGES; i++) {
        GVSViewPage *page = [[GVSViewPage alloc] init];
        page.pageNumber = i;
        page.view.frame = CGRectMake(768 * i, 0, 768, 1004);
        
        [self.scroller addSubview:page.view];
    }
    self.scroller.pagingEnabled = YES;
    self.scroller.contentSize = CGSizeMake(768 * NUMBER_OF_PAGES, 1004);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
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
    return NO;
}

@end
