//
//  ViewController.m
//  Esercizio5
//
//  Created by Clemente Di Rosa on 23/01/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import "ViewController.h"

/*
 5) dato un array di nomi

 
 
 
 inserirli in un array, farne il sort in ordine alfabetico e loggarne il risultato.
 PLUS: dividere in 2 array distinti i nomi dai cognomi
*/

@interface ViewController (){
    NSArray *_myArray;
    NSMutableArray *_myNameArray;
    NSMutableArray *_mySurnameArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _myArray = @[@"Freddie Campbell", @"Krista Kim", @"Merle Hubbard", @"Lorraine Weber", @"Lorenzo Greene", @"Sandra Brock",@"Nichole Hines",@"Floyd Clarke",@"Andrea Ramsey", @"Marcus Reid", @"Jacob Garza", @"Peter Herrera", @"Glenn Horton", @"Francis Mack",@"Yvette Farmer",@"Evan Hughes",@"Shelley Lane",@"Gladys Carroll",@"Stella Thornton", @"Mindy Wilkerson",@"Beth Diaz", @"Everett Mckinney",@"Audrey Cooper",@"Christie Sutton",@"Timothy Walters"];
    
    _myArray = [_myArray sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    _myNameArray = [[NSMutableArray alloc] init];
    _mySurnameArray = [[NSMutableArray alloc] init];
    NSLog(@"array ordered %@",_myArray);
    
    for (int i = 0; i < _myArray.count; i++) {
        NSArray  *data = [_myArray[i] componentsSeparatedByString:@" "];
        [_myNameArray addObject:data[0]];
        [_mySurnameArray addObject:data[1]];
    }
    
    for (int j = 0; j < _myArray.count; j++) {
        NSLog(@"Name : %@ - Surname : %@", _myNameArray[j], _mySurnameArray[j]);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
