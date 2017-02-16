//
//  ViewController.m
//  Corrieri
//
//  Created by Clemente Di Rosa on 13/02/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import "ViewController.h"

#import "CorrieriTableViewController.h"

#import "Corriere.h"
#import "Pacco.h"

const NSInteger kVolumeMax = 1000000;
const NSInteger kPesoMax = 6000000;

@interface ViewController (){
    NSMutableArray<Corriere *> *corrieri;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    corrieri = @[].mutableCopy;
    
    for (int i = 0; i < 20; i++) {
        [self loadCorriereWithID:i];
        NSLog(@"Corriere inserito");
    }
    
    
    /*
    UIBarButtonItem *scoreButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(corrieriView)];
    
    
    self.navigationItem.rightBarButtonItem = scoreButtonItem;
    */
   
  
}

-(void)viewDidAppear:(BOOL)animated{
     [self corrieriView];

    //SAVE OBJECT
    
    /*
    //get userdefault
    array =  [Defaults objectForKey:@"objectArray"];
    
    
    //nuoObject to save
    NSData *archiveData = [NSKeyedArchive archivedDataWithRootObject:object];
    [array addObject:archiveData];
    
    //save
    [Defaults setObject:array forKey:@"objectArray"];
    [Defaults synchronize];
     */
    
    
    //conversione binario a obj
    // array[x] = [NSKeyedUnarchiver unarchiveObjectWithData:array[x]];
    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma Mark - Utils

-(void)corrieriView{
    
    CorrieriTableViewController *corrieriTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"CorrieriTableViewController"];
    
    corrieriTableViewController.delegate = self;
    
    [self.navigationController pushViewController:corrieriTableViewController animated:true];
}


-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}

#pragma Mark - Corrieri
-(void)loadCorriereWithID:(NSInteger)ID{
    NSMutableArray<Pacco *> *pacchi2load = @[].mutableCopy;
    NSInteger volumeMassimo = 0;
    NSInteger pesoMassimo = 0;
    int i = 1;
    while (volumeMassimo < kVolumeMax && pesoMassimo < kPesoMax) {
        NSString *code = [NSString stringWithFormat:@" 000%i", i];
        Pacco *newPacco = [[Pacco alloc] initWithCodice:code mittente:@"Amazon" destinatario:@"Tizio" lunghezza:[self getRandomNumberBetween:1 to:50] altezza:[self getRandomNumberBetween:1 to:50] profondita:[self getRandomNumberBetween:1 to:50] andMateriale:[self getRandomNumberBetween:0 to:2]];
        
        i++;
        
        volumeMassimo += newPacco.volume;
        pesoMassimo += newPacco.peso;
        if (volumeMassimo < kVolumeMax && pesoMassimo < kPesoMax) {
             [pacchi2load addObject:newPacco];
        }
       
    }
    
    NSString *corriereID = [NSString stringWithFormat:@" Corriere %li",(long)ID];
    Corriere *newCorriere = [[Corriere alloc] initWithIdentifier:corriereID VolumeMassimo:kVolumeMax peso:kPesoMax andPacchi:pacchi2load];
    
    [corrieri addObject:newCorriere];
}

#pragma mark - CorrieriTableViewControllerDelegate
-(NSMutableArray<Corriere*> *) CorrieriTableViewFetchResults{
    return corrieri;
}

@end
