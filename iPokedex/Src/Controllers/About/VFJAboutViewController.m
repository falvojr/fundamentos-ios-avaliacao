//
//  PICAboutViewController.m
//  PICCarApp
//
//  Created by PiciOS2016 on 6/25/16.
//  Copyright © 2016 Cast Group. All rights reserved.
//

#import "VFJAboutViewController.h"

@interface VFJAboutViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *progress;

@end

@implementation VFJAboutViewController

static NSString *URL_SOBRE = @"http://www.livroiphone.com.br/carros/sobre.htm";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"About";
    [self.progress startAnimating];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"piciOS" ofType:@"html"];
    // path = URL_SOBRE;
    
    NSURL *url = [NSURL URLWithString:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    self.webView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear: animated];
    // Caso seja necessário recarregar a página  web toda vez
    // que a view controller sobre aparecer, o código pode ser
    // inserido nesse ponto, pois esse método é chamado toda vez
    // que a view aparece na tela.
 
}

#pragma mark - UIWebViewDelegate
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [self.progress stopAnimating];
}

//Indica qual página será carregada pela WebView
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    NSLog(@"Loading the page %@...",request.URL);
    return YES;
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
