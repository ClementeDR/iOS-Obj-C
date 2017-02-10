//
//  ViewController.m
//  Stoccaggio
//
//  Created by Clemente Di Rosa on 08/02/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import "ViewController.h"

#import "Pacco.h"
#import "Corriere.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Pacco *pacco = [[Pacco alloc] initWithCodice:@"0001" mittente:@"Clemente" destinatario:@"Matteo" lunghezza:100 altezza:100 profondita:50 andMateriale:MaterialeFerro];
    
    NSLog(@"\nPacco da spedire: %@", pacco);
    
   /* Pacco *pacco2 = [[Pacco alloc] initWithCodice:@"0002" mittente:@"Bubu" destinatario:@"Matteo" lunghezza:10320 altezza:1100 profondita:30 andMateriale:MaterialeCarta];
    
    NSLog(@"\nPacco da spedire: %@", pacco2);
    
    Pacco *pacco3 = [[Pacco alloc] initWithCodice:@"0003" mittente:@"Matteo" destinatario:@"Matteo" lunghezza:14300 altezza:1500 profondita:10 andMateriale:MaterialePlastica];
    
    NSLog(@"\nPacco da spedire: %@", pacco3); 
    */
    
    NSMutableArray<Pacco *> *pacchi = @[].mutableCopy;
    for (int i = 0; i < [self getRandomNumberBetween:80 to:110]; i++) {
        NSString *code = [NSString stringWithFormat:@" 000%i", i];
        Pacco *newPacco = [[Pacco alloc] initWithCodice:code mittente:@"Amazon" destinatario:@"Tizio" lunghezza:[self getRandomNumberBetween:1 to:50] altezza:[self getRandomNumberBetween:1 to:50] profondita:[self getRandomNumberBetween:1 to:50] andMateriale:[self getRandomNumberBetween:0 to:2]];
        
        [pacchi addObject:newPacco];
        
    }
    
    NSInteger volumeMinimo = 1000000;
    NSInteger volumeMassimo = 1645964;
    
    Corriere *corriere = [[Corriere alloc] initWithVolumeMassimo:[self getRandomNumberBetween:volumeMinimo to:volumeMassimo] andPeso:[self getRandomNumberBetween:1000000  to:15000000]];
    
    NSLog(@"Corriere: \n Peso massimo %li \n Volume massimo %li", corriere.peso, corriere.volumeMassimo );
    
    NSInteger volumeTotale = 0;
    NSInteger pesoTotale = 0;
    for (int j = 0; j < pacchi.count; j++) {
        volumeTotale += pacchi[j].volume;
        pesoTotale += pacchi[j].peso;
    }
    
    NSLog(@"Pacchi :\n Peso massimo %li \n Volume massimo %li", pesoTotale, volumeTotale);
    NSLog(@" I pacchi  %@", (volumeTotale < corriere.volumeMassimo && pesoTotale < corriere.peso) ?  @"Entrano" : @"non entramo");
    
    
    NSLog(@" Servono %i corrieri", [self getMaxCorrieri:((int)ceil(pesoTotale / corriere.peso) + 1) andCorriereVolume:((int)ceil(volumeTotale / corriere.volumeMassimo) + 1)]);
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int)getMaxCorrieri:(int)corrierePeso andCorriereVolume:(int)corriereVolume{
    if (corrierePeso > corriereVolume) {
        return corrierePeso;
    } else
        return corriereVolume;
}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}



@end
