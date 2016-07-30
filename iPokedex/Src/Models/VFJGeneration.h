//
//  VFJGeneration.h
//
//  Created by Venilton FalvoJr on 7/21/16
//  Copyright (c) 2016 Cast Group. All rights reserved.
//

#import <Foundation/Foundation.h>

@class VFJResource;

@interface VFJGeneration : NSObject

@property (nonatomic, strong) NSArray *names;
@property (nonatomic, strong) NSArray *versionGroups;
@property (nonatomic, assign) double internalBaseClassIdentifier;
@property (nonatomic, strong) NSArray *types;
@property (nonatomic, strong) NSArray *moves;
@property (nonatomic, strong) NSArray *pokemonSpecies;
@property (nonatomic, strong) VFJResource *mainRegion;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSArray *abilities;

@end
