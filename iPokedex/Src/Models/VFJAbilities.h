//
//  VFJAbilities.h
//
//  Created by Venilton FalvoJr on 8/1/16
//  Copyright (c) 2016 Cast Group. All rights reserved.
//

#import <Foundation/Foundation.h>

@class VFJResource;

@interface VFJAbilities : NSObject

@property (nonatomic, strong) VFJResource *ability;
@property (nonatomic, assign) BOOL isHidden;
@property (nonatomic, assign) double slot;

@end
