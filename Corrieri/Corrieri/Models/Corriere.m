//
//  Corriere.m
//  Stoccaggio
//
//  Created by Clemente Di Rosa on 08/02/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import "Corriere.h"

@implementation Corriere

-(id)initWithIdentifier:(NSString*)identifier VolumeMassimo:(NSInteger)volumeMassimo peso:(NSInteger)peso andPacchi:(NSMutableArray<Pacco *>*)pacchi{
    
    self = [super init];
    if (self) {
        _identifier = identifier;
        _volumeMassimo = volumeMassimo;
        _peso = peso;
        _pacchi = pacchi;
    }
    
    return self;
}




@end
