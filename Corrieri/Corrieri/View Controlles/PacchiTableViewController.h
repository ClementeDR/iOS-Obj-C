//
//  PacchiTableViewController.h
//  Corrieri
//
//  Created by Clemente Di Rosa on 13/02/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Pacco.h"
#import "Corriere.h"

@protocol PacchiTableViewDelegate <NSObject>
/// richiedo i risultati alla classe che conforma il mio protocollo
-(Corriere *)PacchiTableViewFetchResults;

@end

@interface PacchiTableViewController : UITableViewController

@property (nonatomic, unsafe_unretained) id <PacchiTableViewDelegate> delegate;

@end
