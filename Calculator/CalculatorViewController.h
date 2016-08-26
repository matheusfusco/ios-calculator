//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Matheus Pacheco Fusco on 26/08/16.
//  Copyright © 2016 MatheusFusco. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface CalculatorViewController : UIViewController{
    IBOutlet UILabel * display;
    CalculatorBrain * brain;
    BOOL userIsTypingANumber;
}

-(IBAction)digitPressed:(UIButton *)sender;
-(IBAction)operatorPressed:(UIButton *)sender;

@end
