//
//  RPLDefinitionViewController.h
//  RPLDicccionarioBasico
//
//  Created by Raul Pedraza on 19/1/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RPLDefinitionViewController : UIViewController


@property (strong,nonatomic) NSString *palabra;
@property (strong,nonatomic) NSString *significado;



@property (weak, nonatomic) IBOutlet UILabel *word;

@property (weak, nonatomic) IBOutlet UILabel *meaning;


@end
