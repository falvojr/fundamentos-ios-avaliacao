//
//  PICCarroService.m
//  PICCarApp
//
//  Created by Edi Vergis on 6/24/16.
//  Copyright © 2016 Edi Vergis. All rights reserved.
//

#import "PICPokedexService.h"
#import "NSString+Utils.h"
#import "PICJsonParser.h"

@implementation PICPokedexService 

- (void) findGenerationI:(void (^) (NSString * error, NSMutableArray<PICPokemon> *pokemons))callback{
    PICJsonParser *jsonParser = [PICJsonParser new];
    NSURLSession *session = [NSURLSession sharedSession];
}

- (NSString*) getJsonFromGeneration:(NSString *) generarionId {
    return [[NSBundle mainBundle] pathForResource:[@"pokemons_" concat:generarionId] ofType:@"json"];
}

@end
