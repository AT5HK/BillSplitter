//
//  Calculate.m
//  BillSplitter
//
//  Created by Auston Salvana on 7/11/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "Calculate.h"

@implementation Calculate

-(float)calculateBillSplit:(NSString*)totalBillText betweenNumberOfPeople:(int)numberOfPeople {
    
    NSDecimalNumber *decimalNum = [NSDecimalNumber decimalNumberWithString:totalBillText];
//    float thebill = [totalBillText floatValue];
    return ([decimalNum floatValue]/numberOfPeople);
    
}

@end
