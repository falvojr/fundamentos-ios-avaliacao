//
//  UIViewController+Utils.h
//  PICCarApp
//
//  Created by PiciOS2016 on 7/2/16.
//  Copyright © 2016 Cast Group. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Utils)

-(void) alertWithTitle:(NSString *) title message:(NSString *) msg responseBlock:(void (^)()) block;
-(void) alertWithTitle:(NSString *) title message:(NSString *) msg;

@end
