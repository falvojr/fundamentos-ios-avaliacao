//
//  PICCarService.h
//  PICCarApp
//
//  Created by PiciOS2016 on 6/25/16.
//  Copyright © 2016 Cast Group. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VFJPokemon.h"

@interface VFJPokedexService : NSObject

- (NSArray<VFJPokemon*>*) findPokemons;
- (NSArray<VFJPokemon*>*) findPokemonsByType:(NSString*)type;

@end
