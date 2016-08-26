//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Matheus Pacheco Fusco on 26/08/16.
//  Copyright © 2016 MatheusFusco. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()
@property (readonly) CalculatorBrain * brain;
@end

@implementation CalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(CalculatorBrain *)brain
{
    if (!brain) {
        brain = [[CalculatorBrain alloc] init];
    }
    return brain;
}

#pragma mark - Button Action Methods
-(IBAction)digitPressed:(UIButton *)sender
{
    NSString * digit = sender.titleLabel.text;
    if (userIsTypingANumber)
    {
        display.text = [display.text stringByAppendingString:digit];
    }
    else
    {
        display.text = digit;
        
        userIsTypingANumber = YES;
    }
}

-(IBAction)operatorPressed:(UIButton *)sender
{
    if (userIsTypingANumber)
    {
        self.brain.operand = [display.text doubleValue];
        userIsTypingANumber = NO;
    }
    
    NSString * operation = sender.titleLabel.text;
    

    [self.brain performOperation:operation];
    display.text = [NSString stringWithFormat:@"%g", self.brain.operand];
}

#pragma mark - Memory Management
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
