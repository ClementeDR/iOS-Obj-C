//
//  ViewController.h
//  Esercizio6
//
//  Created by Clemente Di Rosa on 23/01/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *nameTextField;

@property (nonatomic, weak) IBOutlet UITextField *surnameTextField;

@property (nonatomic, weak) IBOutlet UITextField *ageTextField;

@property (nonatomic, weak) IBOutlet UIButton *saveButton;

-(IBAction)buttonPressed:(UIButton *)sender;


@end

