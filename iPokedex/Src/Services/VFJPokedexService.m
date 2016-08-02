//
//  PICCarService.m
//  PICCarApp
//
//  Created by PiciOS2016 on 6/25/16.
//  Copyright © 2016 Cast Group. All rights reserved.
//

#import "VFJPokedexService.h"
#import "VFJPokemon.h"
#import "NSString+Utils.h"
//#import "PICJsonParser.h"

@implementation VFJPokedexService

- (NSArray<VFJPokemon*>*) findPokemons{
    
    NSMutableArray<VFJPokemon*>* pokemons = [@[] mutableCopy];
    for (int i = 0; i < 15; i++) {
        VFJPokemon *pokemon = [VFJPokemon new];
        [pokemon setName:[NSString stringWithFormat:@"Pikachurso %d", i]];
        [pokemons addObject:pokemon];
    }
    return pokemons;
}

- (NSArray<VFJPokemon*>*) findPokemonsByType:(NSString*)type{
    //PICXmlCarParser *parser = [PICXmlCarParser new];
    //NSString * fileName = [@"carros_" concat:type];
    //NSString *path = [[NSBundle mainBundle] pathForResource:fileName ofType:@"xml"];
    //return [parser parseXMLToDOM:path];
    //NSMutableArray<VFJPokemon*> *carList;
    //NSString *path = [[NSBundle mainBundle] pathForResource:fileName ofType:@"json"];
    //PICJsonParser *jsonParser = [PICJsonParser new];
    //carList = [jsonParser parseJsonModel:path];
    return self.findPokemons;
}

@end
