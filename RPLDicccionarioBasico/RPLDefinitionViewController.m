//
//  RPLDefinitionViewController.m
//  RPLDicccionarioBasico
//
//  Created by Raul Pedraza on 19/1/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "RPLDefinitionViewController.h"

@interface RPLDefinitionViewController ()

@end

@implementation RPLDefinitionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    //mostramos al padre.
    [super viewWillAppear:animated];
    
    self.word.text=self.palabra;
    self.meaning.text=self.significado;
    
    

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
