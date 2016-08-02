//
//  IPICNovasFuncoes.h
//  Bem Vindo
//
//  Created by Edi Vergis on 6/16/16.
//  Copyright © 2016 Edi Vergis. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VFJPokemonProtocol <NSObject>

@required
    + (NSString*) getStaticImageUrl;
    + (NSString*) getDynamicImageUrl;
@optional

@end
