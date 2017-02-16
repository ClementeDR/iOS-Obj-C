//
//  CorrieriTableViewController.h
//  Corrieri
//
//  Created by Clemente Di Rosa on 13/02/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PacchiTableViewController.h"

#import "Corriere.h"

@protocol CorrieriTableViewDelegate <NSObject>
/// richiedo i risultati alla classe che conforma il mio protocollo
-(NSMutableArray<Corriere *> *)CorrieriTableViewFetchResults;

@end

@interface CorrieriTableViewController : UITableViewController <PacchiTableViewDelegate>

@property (nonatomic, unsafe_unretained) id <CorrieriTableViewDelegate> delegate;

@end
