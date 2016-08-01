//
//  VFJPokemon.h
//
//  Created by Venilton FalvoJr on 8/1/16
//  Copyright (c) 2016 Cast Group. All rights reserved.
//

#import <Foundation/Foundation.h>

@class VFJSprites, VFJResource;

@interface VFJPokemon : NSObject

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
