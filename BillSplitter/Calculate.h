//
//  Calculate.h
//  BillSplitter
//
//  Created by Auston Salvana on 7/11/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculate : NSObject

-(float)calculateBillSplit:(NSString*)totalBillText betweenNumberOfPeople:(int)numberOfPeople;

@end
