//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Matheus Pacheco Fusco on 26/08/16.
//  Copyright © 2016 MatheusFusco. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject{
@private
    double operand;
    NSString * waitingOperation;
    double waitingOperand;
}
@property double operand;
-(double)performOperation:(NSString *)operation;
@end
