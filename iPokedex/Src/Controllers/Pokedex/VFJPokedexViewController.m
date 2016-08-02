//
//  PICCarListViewController.m
//  PICCarApp
//
//  Created by PiciOS2016 on 6/25/16.
//  Copyright © 2016 Cast Group. All rights reserved.
//

#import "VFJPokedexViewController.h"
#import "VFJPokemonDetailViewController.h"
#import "VFJPokemon.h"
#import "VFJPokedexService.h"
#import "UIViewController+Utils.h"
#import "VFJPokemonCell.h"

@interface VFJPokedexViewController () {
    NSArray<VFJPokemon*>*carList;
    VFJPokedexService *service;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSString *carType;

@end

@implementation VFJPokedexViewController
static NSString* cellIdentifier = @"Cell";


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Pokemons - Geracao 1";
    //Atribuindo delegates
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    //[self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellIdentifier];
    UINib *nib = [UINib nibWithNibName:@"VFJPokemonCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:cellIdentifier];
    
    service = [VFJPokedexService new];
    self.carType = @"classicos";
    [self findCars];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    VFJPokemon *pokemon = carList[indexPath.row];
    VFJPokemonDetailViewController *detalhe = [[VFJPokemonDetailViewController alloc] init];
    [detalhe setPokemon:pokemon];
    
    [self.navigationController pushViewController:detalhe animated:YES];
    
    //[self alertWithTitle:@"Seleção" message:[NSString stringWithFormat:@"Selecionou o carro  na linha %ld ", indexPath.row]];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return carList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    //[cell.textLabel setText:[NSString stringWithFormat:@"Carro linha %ld", indexPath.row]];
    //[cell.imageView  setImage:[UIImage imageNamed:@"ferrari_ff.png"]];
    
    VFJPokemon *car = carList[indexPath.row];
    VFJPokemonCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    [cell setName:car.name];
    //[cell setUrlImage:car.getStaticImageUrl];
    
    return cell;
}
- (IBAction)changeCarType:(UISegmentedControl*)sender {
    switch (sender.selectedSegmentIndex) {
        case 0:
            self.carType = @"classicos";
            break;
        case 1:
            self.carType = @"esportivos";
            break;
        case 2:
            self.carType = @"luxo";
            break;
        default:
            break;
    }
    [self findCars];
}

- (void) findCars {
    carList =[service findPokemonsByType:self.carType];
    [self.tableView reloadData];
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
