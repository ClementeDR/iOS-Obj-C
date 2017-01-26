//
//  ScoreTableViewController.h
//  Esercizio3
//
//  Created by Clemente Di Rosa on 24/01/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol ScoreTableViewDelegate <NSObject>
-(NSArray *)ScoreTableViewFetchResults;

@end


@interface ScoreTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *scoresArray;

@property (nonatomic, unsafe_unretained) id <ScoreTableViewDelegate> delegate;


@end
