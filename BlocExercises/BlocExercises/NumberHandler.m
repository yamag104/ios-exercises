//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    NSNumber *doubledNumber = @([number integerValue] *2);
    return doubledNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSInteger higherNumber, lowerNumber;
    if (otherNumber < number) {
        lowerNumber = otherNumber;
        higherNumber = number;
    }
    else {
        lowerNumber = number;
        higherNumber = otherNumber;
    }
    NSInteger length = higherNumber - lowerNumber + 1;
    NSMutableArray *mutableArr = [[NSMutableArray alloc] init];
    for (NSInteger i=0; i<length; ++i) {
        [mutableArr insertObject:[NSNumber numberWithInteger:lowerNumber++] atIndex:i];
    }
    NSArray *array = [mutableArr copy];
    return array;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSInteger min = 0;
    for (NSInteger i=0; i<[arrayOfNumbers count]; ++i) {
        if ([arrayOfNumbers[i] intValue] < min) {
            min = [arrayOfNumbers[i] intValue];
        }
    }
    return min;
}

@end
