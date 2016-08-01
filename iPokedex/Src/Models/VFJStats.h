//
//  VFJStats.h
//
//  Created by Venilton FalvoJr on 8/1/16
//  Copyright (c) 2016 Cast Group. All rights reserved.
//

#import <Foundation/Foundation.h>

@class VFJResource;

@interface VFJStats : NSObject

@property (nonatomic, assign) double effort;
@property (nonatomic, strong) VFJResource *stat;
@property (nonatomic, assign) double baseStat;

@end
