//
//  NSString+Utils.h
//  iPokedex
//
//  Created by falvojr (Venilton FalvoJr) on 7/6/16.
//  Copyright © 2016 Venilton FalvoJr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Utils)

// Remover os espaços e os caracteres \n de uma string.
- (NSString*)trimRemovingNewLine;

// Concatena as string.
- (NSString*)concat:(NSString*)string;

// Subistituir as ocorrências de uma string por outra.
- (NSString*)replace:(NSString*)string by:(NSString*)otherString;

@end
