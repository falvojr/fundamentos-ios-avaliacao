//
//  NSString+Utils.m
//  iPokedex
//
//  Created by falvojr (Venilton FalvoJr) on 7/6/16.
//  Copyright © 2016 Venilton FalvoJr. All rights reserved.
//

#import "NSString+Utils.h"

@implementation NSString (Utils)

// Remover os espaços e os caracteres \n de uma string.
- (NSString *)trimRemovingNewLine{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

// Concatena as string.
- (NSString *)concat:(NSString *)string{
    return [self stringByAppendingString:string];
}

// Subistituir as ocorrências de uma string por outra.
- (NSString*) replace:(NSString *)string by:(NSString *)outraString{
    return [self stringByReplacingOccurrencesOfString:string withString:outraString];
}

@end
