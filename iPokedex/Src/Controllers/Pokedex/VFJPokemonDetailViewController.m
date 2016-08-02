//
//  PICCarDetailViewController.m
//  PICCarApp
//
//  Created by PiciOS2016 on 6/25/16.
//  Copyright © 2016 Cast Group. All rights reserved.
//

#import "VFJPokemonDetailViewController.h"
#import "VFJDownloadImageView.h"

@interface VFJPokemonDetailViewController ()
@property (weak, nonatomic) IBOutlet VFJDownloadImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation VFJPokemonDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //[self.imageView setUrl: [self.pokemon //]];
    self.textView.text = self.pokemon.name;	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
