//
//  Corriere.m
//  Stoccaggio
//
//  Created by Clemente Di Rosa on 08/02/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import "Corriere.h"

@implementation Corriere

-(id)initWithVolumeMassimo:(NSInteger)volumeMassimo andPeso:(NSInteger)peso{
    
    self = [super init];
    if (self) {
        _volumeMassimo = volumeMassimo;
        _peso = peso;
    }
    return self;
}




@end
