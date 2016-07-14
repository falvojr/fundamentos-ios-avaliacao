//
//  UIViewController+Utils.h
//  iPokedex
//
//  Created by falvojr (Venilton FalvoJr) on 7/6/16.
//  Copyright © 2016 Venilton FalvoJr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Utils)

-(void) alertComTitulo:(NSString *) titulo mensagem:(NSString *) msg blocoResposta:(void (^)())bloco;

-(void) alertComTitulo:(NSString *) titulo mensagem:(NSString *) msg;

@end
