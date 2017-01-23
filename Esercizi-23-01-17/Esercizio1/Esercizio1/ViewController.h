//
//  ViewController.h
//  Esercizio1
//
//  Created by Clemente Di Rosa on 23/01/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *usernameTextField;

-(IBAction)didEndOnExitUserTextField:(UITextField *)sender;

@end

