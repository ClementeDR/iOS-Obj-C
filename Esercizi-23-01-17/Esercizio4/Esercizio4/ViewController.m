//
//  ViewController.m
//  Esercizio4
//
//  Created by Clemente Di Rosa on 23/01/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import "ViewController.h"


/*
 4) Data una sequenza di numeri 100 numeri generati a random metterli in un array, sommarli e loggarne il risultato in console e a video. Ordinarli in ordine crescente e decrescente loggandone entrambi i risultati
 */


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
    NSMutableArray *array = [NSMutableArray mutableCopy];
    array = @[].mutableCopy;
    for (int i = 0; i < 100; i++) {
        [array addObject:@([self getRandomNumberBetween:-1000 to:1000])];
    }
    
    int total = 0;
    for (int j = 0; j < 100; j++) {
        total += [array[j] intValue];
    }
    
    [self.resultLabel setText:[NSString stringWithFormat:@"Totale valori %i", total]];
    
    [self ordinamentoCrescente:array];
    [self ordinamentoDecrescente:array];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}

-(void)ordinamentoCrescente:(NSMutableArray *)array{
    NSArray *array2beSaved = [array sortedArrayUsingComparator:^NSComparisonResult(NSNumber  *obj1, NSNumber  *obj2) {
        int value1 = obj1.intValue;
        int value2 = obj2.intValue;
        
        if (value1 == value2) {
            return NSOrderedSame;
        } else {
            if (value1 < value2) {
                return NSOrderedAscending;
            } else {
                return NSOrderedDescending;
            }
        }
    }];
    
    NSLog(@"MIO ARRAY ORDINATO Crescente%@", array2beSaved);
}

-(void)ordinamentoDecrescente:(NSMutableArray *)array{
    NSArray *array2beSaved = [array sortedArrayUsingComparator:^NSComparisonResult(NSNumber  *obj1, NSNumber  *obj2) {
        int value1 = obj1.intValue;
        int value2 = obj2.intValue;
        
        if (value1 == value2) {
            return NSOrderedSame;
        } else {
            if (value1 > value2) {
                return NSOrderedAscending;
            } else {
                return NSOrderedDescending;
            }
        }
    }];
    
    NSLog(@"MIO ARRAY ORDINATO Decrescente%@", array2beSaved);
}

@end
