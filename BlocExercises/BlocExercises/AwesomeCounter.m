//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSString *stringWithNum = @"";
//    if (number == otherNumber) {
//        stringWithNum = [NSString stringWithFormat:@"%ld",number];
//        return stringWithNum;
//    }
    
    // Setting a lower number and a higher number
    NSInteger lowerNum = (number<otherNumber)?number:otherNumber;
    NSInteger higherNum = (number>otherNumber)?number:otherNumber;
//    NSMutableString *mutableString = [@"" mutableCopy];
    
    for (NSInteger n=lowerNum; n<=higherNum; ++n) {
        stringWithNum = [NSString stringWithFormat:@"%@%ld", stringWithNum, n];
    }
    
    // Converting from NSMutableString to NSString
//    NSString *stringWithNumbers = [NSString stringWithString:mutableString];
    return stringWithNum;
}

@end
