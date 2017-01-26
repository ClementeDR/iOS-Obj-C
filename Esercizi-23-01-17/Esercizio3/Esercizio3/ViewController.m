//
//  ViewController.m
//  Esercizio3
//
//  Created by Clemente Di Rosa on 23/01/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import "ViewController.h"
#import "ScoreTableViewController.h"

#define PARI 1
#define DISPARI 0

#define Defaults [NSUserDefaults standardUserDefaults]
#define Results @"NumberScore"

/*
 Realizzare una app che generi a video un valore di tipo Int random e lo presenti all’utente.
 -(int)getRandomNumberBetween:(int)from to:(int)to {
 return (int)from + arc4random() % (to-from+1);
 }
	realizzare una UI in grado di presentare all’utente a video la domanda “Questo numero è pari”?
 mediante 2 pulsanti “SI” - “No” l’utente deve poter rispondere e Voi validarne la risposta mostrando una UIAlertController che ne dia l’esito corretto o meno. il gioco può ripetersi all’infinito a Vs discrezione

*/

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
   
    [self startGame];
    UIBarButtonItem *scoreButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(resultButtonPressed)];
    
    
    self.navigationItem.rightBarButtonItem = scoreButtonItem;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Work

-(void)startGame{
    
    int myNumber = [self getRandomNumberBetween:1 to:100];
    
    [self question:myNumber];

}
-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}

-(void)testNumber:(int)number decision:(int)decisionValue{
    NSString *message = @"";
    if(decisionValue == PARI){
        if(number %2 == 0){
            message = @"Risposta corretta";
        } else {
            message = @"Risposta errata";
        }
    
    } else {
        if (number %2 != 0) {
            message = @"Risposta corretta";
        } else {
            message = @"Risposta errata";
        }
    }
    
    [self resultAllert:message];
    [self saveScore:number messageValue:message];
}

#pragma mark - Alert
-(void)question:(int)number{
    NSString *myMessage = [NSString stringWithFormat:@" %i e' pari o dispari?", number];
    
    UIAlertController *alertViewController = [UIAlertController alertControllerWithTitle:@"Hello" message:myMessage preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *yesAction = [UIAlertAction actionWithTitle:@"PARI" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"Utente pensa pari");
        [self testNumber:number decision:PARI];
        
    }];
    
    UIAlertAction *noAction = [UIAlertAction actionWithTitle:@"DISPARI" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"Utente pensa dispari");
        [self testNumber:number decision:DISPARI];
    }];
    
    [alertViewController addAction:yesAction];
    [alertViewController addAction:noAction];
    
    [self presentViewController:alertViewController animated:true completion:nil];

}

-(void)resultAllert:(NSString *)message{
    
    UIAlertController *alertViewController = [UIAlertController alertControllerWithTitle:@"RISPOSTA" message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"Finito");
    }];
    
    [alertViewController addAction:okAction];
    [self presentViewController:alertViewController animated:true completion:nil];
}


#pragma mark - Score
-(void)buttonPlayPressed:(UIButton *)sender{
    [self startGame];
}

-(void)resultButtonPressed{
    NSLog(@"resultButtonPressed");
    
    ScoreTableViewController *tableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ScoreTableViewController"];
    NSArray *resultArray = [self risultati];
    [tableViewController setScoresArray:resultArray];
    
    //instauro il collegamento tra GVC e SVC
    tableViewController.delegate = self;
    
    
    //pusho nello stack del navigationViewController
    [self.navigationController pushViewController:tableViewController animated:true];

}

-(void)saveScore:(int)score messageValue:(NSString*)message{
    NSMutableArray *array = [[Defaults objectForKey:Results] mutableCopy];
    if (array == nil) {
        array = @[].mutableCopy;
    }

    [array addObject:[NSString stringWithFormat:@"%i -> %@", score, message]];
    
    [Defaults setObject:array forKey:Results];
    [Defaults synchronize];
}

- (NSArray *)risultati{
    NSArray *array = [Defaults objectForKey:Results];
    
    if (array == nil) {
        array = @[];
    }
    
    return array;
}

#pragma mark - ScoreTableViewDelegate
-(NSArray *)ScoreTableViewFetchResults{
    NSLog(@"ScoreTableViewFetchResults");
    return [self risultati];
}

@end
