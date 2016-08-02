//
//  VFJPokemon.h
//
//  Created by Venilton FalvoJr on 8/1/16
//  Copyright (c) 2016 Cast Group. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Utils.h"
#import "VFJPokemonProtocol.h"

@class VFJSprites, VFJResource;

//implmentando enum, normalmente ele fica no .h da classe que ele pertence
typedef NS_ENUM(NSUInteger, PokemonClass) {
    PokemonClassNormal,
    PokemonClassLegendary,
};

@interface VFJPokemon : NSObject<VFJPokemonProtocol>

@property (nonatomic, assign) double internalBaseClassIdentifier;
@property (nonatomic, strong) NSString *locationAreaEncounters;
@property (nonatomic, strong) NSArray *stats;
@property (nonatomic, strong) NSArray *moves;
@property (nonatomic, assign) double baseExperience;
@property (nonatomic, strong) VFJSprites *sprites;
@property (nonatomic, strong) NSArray *forms;
@property (nonatomic, assign) double weight;
@property (nonatomic, strong) VFJResource *species;
@property (nonatomic, strong) NSArray *gameIndices;
@property (nonatomic, assign) double order;
@property (nonatomic, strong) NSArray *heldItems;
@property (nonatomic, assign) double height;
@property (nonatomic, strong) NSArray *abilities;
@property (nonatomic, assign) BOOL isDefault;
@property (nonatomic, strong) NSArray *types;
@property (nonatomic, strong) NSString *name;

@end
