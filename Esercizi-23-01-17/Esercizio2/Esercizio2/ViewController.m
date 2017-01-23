//
//  ViewController.m
//  Esercizio2
//
//  Created by Clemente Di Rosa on 23/01/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import "ViewController.h"
#define PARI @" e' pari"
#define DISPARI @" e' dispari"


/*
 Realizzare una app che permetta all’utente di conoscere se il valore numerico inserito (a video) è pari o dispari loggando in console il risultato e a video
 
 */

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Action
-(IBAction)didEndOnExitNumberTextField:(UITextField *)sender{
    int myNumber = [[sender text] intValue];
    
    if(myNumber %2 == 0){
        NSLog(@" %i %@", myNumber, PARI);
        [self.resultLabel setText:[NSString stringWithFormat:@"%i %@", myNumber , PARI]];
    } else {
        NSLog(@" %i %@", myNumber, DISPARI);
        [self.resultLabel setText:[NSString stringWithFormat:@"%i %@", myNumber , DISPARI]];

    }
}

@end
