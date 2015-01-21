//
//  RPLDicModel.m
//  RPLDicccionarioBasico
//
//  Created by Raul Pedraza on 19/1/15.
//  Copyright (c) 2015 Raul Pedraza. All rights reserved.
//

#import "RPLDicModel.h"

@implementation RPLDicModel


-(id)init{
    
    //para montar primero NSObject. EN java esto lo hace automaticamente.
    //llamo mi calse padre y si todo ha ido bien se guarda en self.
    if (self =[super init]) {
        
        
        
        _myDictionary=@{@"big":@"grande", @"pencil":@"lapiz",@"table":@"mesa"};
        
        
    }
    
    return self;

}

-(NSString*)wordAtIndex:(NSUInteger) anIndex{
        //dame las palabras de mydiccionary  y las devuelves

    return [[self.myDictionary allKeys]objectAtIndex:anIndex];

}


@end
