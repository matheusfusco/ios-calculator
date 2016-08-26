//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Matheus Pacheco Fusco on 26/08/16.
//  Copyright © 2016 MatheusFusco. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain
@synthesize operand;

-(double)performOperation:(NSString *)operation
{
    if ([operation isEqualToString:@"sqrt"])
    {
        operand = sqrt(operand);
    }
    else if ([operation isEqualToString:@"C"])
    {
        operand = 0;
        waitingOperand = 0;
    }
    else
    {
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    return operand;
}

-(void)performWaitingOperation
{
    if ([@"+" isEqual:waitingOperation])
    {
        operand = waitingOperand + operand;
    }
    else if ([@"-" isEqual:waitingOperation])
    {
        operand = waitingOperand - operand;
    }
    else if ([@"*" isEqual:waitingOperation])
    {
        operand = waitingOperand * operand;
    }
    else if ([@"/" isEqual:waitingOperation])
    {
        if (operand)
        {
            operand = waitingOperand / operand;
        }
    }
}
@end
