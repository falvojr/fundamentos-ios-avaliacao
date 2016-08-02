//
//  UIViewController+Utils.m
//  PICCarApp
//
//  Created by PiciOS2016 on 7/2/16.
//  Copyright © 2016 Cast Group. All rights reserved.
//

#import "UIViewController+Utils.h"

@implementation UIViewController (Utils)

-(void) alertWithTitle:(NSString *) title message:(NSString *) msg responseBlock:(void (^)())block{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:block];
    [alertController addAction:okAction];
    
    [self performSelectorOnMainThread:@selector(presentViewController:) withObject:alertController waitUntilDone:NO];
}

-(void) alertWithTitle:(NSString *) title message:(NSString *) msg{
    [self alertWithTitle:title message:msg responseBlock:nil];
}

-(void) presentViewController:(UIAlertController *) alert{
    [self presentViewController:alert animated:YES completion:nil];
}

@end
