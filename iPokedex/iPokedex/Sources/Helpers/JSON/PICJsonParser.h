//
//  PICJsonParser.h
//  PICAplicativoCarro
//
//  Created by C1284047 (Edi Vergis) on 6/27/16.
//  Copyright © 2016 Edi Vergis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PICPokemon.h"

@interface PICJsonParser : NSObject
- (NSMutableArray<PICPokemon>*)parseJson:(NSString*)caminhoArquivo;
- (NSMutableArray<PICPokemon>*)parseJsonModel:(NSString*)caminhoArquivo;
- (NSMutableArray<PICPokemon> *)parseJsonData:(NSData *)dataFile;
@end
