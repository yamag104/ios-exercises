//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    id charID = characterDictionary[@"favorite drink"];
    NSString *charString = [NSString stringWithFormat:@"%@",charID];
    return charString;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *charMutableArr = [[NSMutableArray alloc] init];
    for (NSDictionary *charDict in charactersArray) {
        [charMutableArr addObject:[charDict objectForKey:@"favorite drink"]];
    }
    NSArray *charArr = [charMutableArr copy];
    return charArr;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *mutableDict = [characterDictionary mutableCopy];
    [mutableDict setObject:@"memorable quote" forKey:@"quote"];
    NSDictionary *charDict = [mutableDict copy];
    return charDict;
}

@end
