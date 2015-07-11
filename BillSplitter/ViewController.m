//
//  ViewController.m
//  BillSplitter
//
//  Created by Auston Salvana on 7/11/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "ViewController.h"
#import "Calculate.h"

@interface ViewController ()

@property (nonatomic) Calculate *calculate;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.calculate = [[Calculate alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - touch events

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self.billTotal resignFirstResponder];
    
}

#pragma mark - UIControl set label events

- (IBAction)splitBill:(id)sender {
    
    
    NSString *labelAmountText = [NSString stringWithFormat:@"$%.2f Per a Person",
                                [self.calculate calculateBillSplit:self.billTotal.text     betweenNumberOfPeople:self.numberOfPeople.value]];
    self.billSplitLabel.text = labelAmountText;
    
}

- (IBAction)sliderAction:(id)sender {
    
    NSString *labelAmountText = [NSString stringWithFormat:@"$%.2f Per a Person",
                                 [self.calculate calculateBillSplit:self.billTotal.text     betweenNumberOfPeople:self.numberOfPeople.value]];
    self.billSplitLabel.text = labelAmountText;
    
}
@end
