//
//  ViewController.h
//  Esercizio3
//
//  Created by Clemente Di Rosa on 23/01/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ScoreTableViewController.h"

@interface ViewController : UIViewController <ScoreTableViewDelegate>

@property (nonatomic,weak) IBOutlet UIButton *playButton;


-(IBAction)buttonPlayPressed:(UIButton*)sender;
@end

