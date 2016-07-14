//
//  PICCarroService.h
//  PICCarApp
//
//  Created by Edi Vergis on 6/24/16.
//  Copyright © 2016 Edi Vergis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PICPokemon.h"

@interface PICPokedexService : NSObject

- (void) findGenerationI:(void (^) (NSString * error, NSMutableArray<PICPokemon> *pokemons))callback;

@end
