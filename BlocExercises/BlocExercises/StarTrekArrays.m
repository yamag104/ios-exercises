//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *startrekArr = [characterString componentsSeparatedByString:@";"];
    return startrekArr;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *starTrekString = [characterArray componentsJoinedByString:@";"];
    return starTrekString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    // converting to mutable array
    NSMutableArray *mutableCharArr = [characterArray mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [mutableCharArr sortUsingDescriptors:@[sortDescriptor]];
    
    // convert back to NSArray
    NSArray * charArr = [mutableCharArr copy];
    return charArr;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSMutableArray *mutableCharArr = [characterArray mutableCopy];
    NSPredicate *containsThe = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    [mutableCharArr filterUsingPredicate:containsThe];
    if (mutableCharArr.count > 0) {
        return YES;
    }
    else {
        return NO;
    }
}

@end
