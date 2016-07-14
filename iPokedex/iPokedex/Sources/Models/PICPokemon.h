//
//  PICCarro.h
//  PICCarApp
//
//  Created by Edi Vergis on 6/24/16.
//  Copyright © 2016 Edi Vergis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"

@interface PICPokemon : JSONModel
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *urlStaticImage;
@property (nonatomic, strong) NSString *urlDynamicImage;
@end

@protocol PICPokemon
@end
