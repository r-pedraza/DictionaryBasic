//
//  RPLDicModel.h
//  RPLDicccionarioBasico
//
//  Created by Raul Pedraza on 19/1/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RPLDicModel : NSObject

@property (strong,nonatomic)NSDictionary *myDictionary;


//Recogerá una nsstring del diccionario y devolvera un indice.

-(NSString*)wordAtIndex:(NSUInteger) anIndex;


@end
