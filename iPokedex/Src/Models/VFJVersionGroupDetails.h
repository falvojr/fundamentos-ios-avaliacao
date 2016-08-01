//
//  VFJVersionGroupDetails.h
//
//  Created by Venilton FalvoJr on 8/1/16
//  Copyright (c) 2016 Cast Group. All rights reserved.
//

#import <Foundation/Foundation.h>

@class VFJResource;

@interface VFJVersionGroupDetails : NSObject

@property (nonatomic, strong) VFJResource *moveLearnMethod;
@property (nonatomic, strong) VFJResource *versionGroup;
@property (nonatomic, assign) double levelLearnedAt;

@end
