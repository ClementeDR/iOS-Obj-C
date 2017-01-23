//
//  ViewController.m
//  Esercizio7
//
//  Created by Clemente Di Rosa on 23/01/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import "ViewController.h"

/*
 7) mediante l’uso di un timer mostrare a video i secondi trascorsi.
 PLUS: formattare l’output a video con ore:minuti:secondi -> 00:00:00
 */


@interface ViewController (){
    NSTimer *_gameTimer;
    int _timeCount;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
    [self startTimer];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Timer
-(void)startTimer{
     _gameTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerTick) userInfo:nil repeats:true];
}

-(void)timerTick{
    _timeCount++;
    int tempValue = _timeCount;
    int hour = tempValue /3600;
    tempValue = (tempValue % 3600);
    int minutes = tempValue /60;
    tempValue = (tempValue % 60);
    
    NSString *hourString;
    
    NSString *minutesString;
    
    NSString *secondsString;
    
    if (hour < 10) {
        hourString = [NSString stringWithFormat:@"0%i", hour];
    } else {
        hourString = [NSString stringWithFormat:@"%i", hour];
    }
    if (minutes < 10) {
        minutesString = [NSString stringWithFormat:@"0%i", minutes];
    } else {
        minutesString = [NSString stringWithFormat:@"%i", minutes];
    }
    if (tempValue < 10) {
        secondsString = [NSString stringWithFormat:@"0%i", tempValue];
    } else {
        secondsString = [NSString stringWithFormat:@"%i", tempValue];
    }
    
    
    [self.timerLabel setText:[NSString stringWithFormat:@"%@:%@:%@",hourString, minutesString, secondsString ]];
}

@end
