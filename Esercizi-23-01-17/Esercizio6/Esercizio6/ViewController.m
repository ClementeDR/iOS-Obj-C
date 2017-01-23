//
//  ViewController.m
//  Esercizio6
//
//  Created by Clemente Di Rosa on 23/01/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import "ViewController.h"

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

-(IBAction)buttonPressed:(UIButton *)sender{
    NSLog(@" Name %@ ", [self.nameTextField text]);
    
    NSLog(@"\n Surname %@ ", [self.surnameTextField text]);
    
    NSLog(@"\n Age %@ ", [self.ageTextField text]);
    
}

@end
