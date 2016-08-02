//
//  PICDownloadImageView.m
//  PICCarApp
//
//  Created by PiciOS2016 on 7/2/16.
//  Copyright © 2016 Cast Group. All rights reserved.
//

#import "VFJDownloadImageView.h"
#import "NSString+Utils.h"

@interface VFJDownloadImageView(){
    UIActivityIndicatorView *progress;
    NSOperationQueue *mainQueue;
    NSOperationQueue *queue;
}

@end

@implementation VFJDownloadImageView

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    //Criando uma fila de operação local
    queue = [NSOperationQueue new];
    //Recuperando a fila principal
    mainQueue = [NSOperationQueue mainQueue];
    //[self criarProgress];
    return [super initWithCoder:aDecoder];
}

-(void) showProgress{
    progress = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [progress setHidesWhenStopped:YES];
    [self addSubview:progress];
}

- (void)layoutSubviews{
    progress.center = [self convertPoint:self.center toView:self.superview];
}

- (void) setUrl:(NSString*)url{
    [self showProgress];
    [self setUrl:url cache:YES];
}

- (void) setUrl:(NSString*)url cache:(BOOL)cache{
    self.image = nil;
    [queue cancelAllOperations];
    [progress startAnimating];
    [queue addOperationWithBlock:^{
        [self downloadImage:url cache:cache];
    }];
}

- (void) downloadImage:(NSString*)url cache:(BOOL)cache{
    NSData *data= nil;
    if (!cache) {
        data = [NSData dataWithContentsOfURL:[NSURL URLWithString:url]];
    }else{
        NSString *path = [url replace:@"/" to:@"_"];
        path = [path replace:@"\\" to:@"_"];
        path = [path replace:@":" to:@"_"];
        path = [[NSHomeDirectory() concat:@"/Documents/"] concat:path];
        
        BOOL existe = [[NSFileManager defaultManager]fileExistsAtPath:path];
        if (existe) {
            data = [NSData dataWithContentsOfFile:path];
        }else{
            data = [NSData dataWithContentsOfURL:[NSURL URLWithString:url]];
            UIImage *image = [UIImage imageWithData:data];
            if (image != nil) {
                [data writeToFile:path atomically:YES];
            }
        }
    }
    
    [mainQueue addOperationWithBlock:^{
        [self showImage: data];
    }];
}

- (void) showImage:(NSData*)data{
    if (data.length > 0) {
        self.image = [UIImage imageWithData:data];
    }
    [progress stopAnimating];
}

@end
