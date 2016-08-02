//
//  PICCarCell.m
//  PICCarApp
//
//  Created by PiciOS2016 on 7/2/16.
//  Copyright © 2016 Cast Group. All rights reserved.
//

#import "VFJPokemonCell.h"
#import "VFJDownloadImageView.h"

@interface VFJPokemonCell()

@property (weak, nonatomic) IBOutlet VFJDownloadImageView *imageViewPokemon;
@property (weak, nonatomic) IBOutlet UILabel *lblName;


@end

@implementation VFJPokemonCell

- (void)setName:(NSString *)name{
    self.lblName.text = name;
}

- (void)setUrlImage:(NSString *)urlImage{
    [self.imageViewPokemon setUrl:urlImage];
}

@end
