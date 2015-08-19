//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *favCheeseString = [NSString stringWithFormat:@"My favorite cheese is %@.",cheeseName];
    return favCheeseString;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
        NSRange cheeseRange = [[cheeseName lowercaseString] rangeOfString:@" cheese"];
        // .location is a starting point
        NSString *newCheese = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        return newCheese;
    } else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
        return cheeseName;
    }
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return nil;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        NSString *cheeseSingle = [NSString stringWithFormat:@"%lu cheese", cheeseCount];
        return cheeseSingle;
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        NSString *cheeseMultiple = [NSString stringWithFormat:@"%lu cheeses", cheeseCount];
        return cheeseMultiple;
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return nil;
}

@end
