//
//  GVSViewPage.h
//  GridViewScroller
//
//  Created by Samuel Flores on 10/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AQGridView.h"

@interface GVSViewPage : UIViewController <AQGridViewDelegate, AQGridViewDataSource>

@property (nonatomic, retain) AQGridView *gridView;
@property (nonatomic) NSInteger pageNumber;

@end
