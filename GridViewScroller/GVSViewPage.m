//
//  GVSViewPage.m
//  GridViewScroller
//
//  Created by Samuel Flores on 10/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "GVSViewPage.h"

@implementation GVSViewPage

@synthesize gridView=_gridView;
@synthesize pageNumber=_pageNumber;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    self.gridView = [[AQGridView alloc] initWithFrame:CGRectMake(0, 0, 768, 1004)];
    self.gridView.delegate = self;
    self.gridView.dataSource = self;
    self.gridView.backgroundColor = [UIColor grayColor];
    self.gridView.scrollEnabled = NO;
    
    [self.view addSubview:self.gridView];
    [_gridView reloadData];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return NO;
}

- (CGSize)portraitGridCellSizeForGridView:(AQGridView *)gridView
{
    return CGSizeMake(380, 340);
}

- (NSUInteger)numberOfItemsInGridView:(AQGridView *)gridView
{
    return 6;
}

- (AQGridViewCell *)gridView:(AQGridView *)gridView cellForItemAtIndex:(NSUInteger)index
{
    static NSString *CellIdentifier = @"CellIdentifier";
    
    AQGridViewCell *cell = [gridView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[AQGridViewCell alloc] initWithFrame:CGRectMake(0, 0, 380, 330)];
            // Aqui vc precisa criar o conteúdo da celula
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 360, 310)];
        label.textAlignment = UITextAlignmentCenter;
        label.text = [NSString stringWithFormat:@"%02d", ((self.pageNumber * 6) + index) + 1];
        label.font = [UIFont fontWithName:@"Helvetica-Bold" size:182];
        label.textColor = [UIColor whiteColor];
        label.backgroundColor = [UIColor clearColor];
        
        CGFloat hue = ( arc4random() % 256 / 256.0 );
        CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;
        CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;
        
        label.backgroundColor = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
        
        cell.contentView.backgroundColor = [UIColor clearColor];
        [cell.contentView addSubview:label];
    }
    return cell;
}

@end
