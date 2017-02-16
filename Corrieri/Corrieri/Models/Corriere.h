//
//  Corriere.h
//  Stoccaggio
//
//  Created by Clemente Di Rosa on 08/02/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Pacco.h"

@interface Corriere : NSObject
-(id)initWithIdentifier:(NSString*)identifier VolumeMassimo:(NSInteger)volumeMassimo peso:(NSInteger)peso andPacchi:(NSMutableArray<Pacco *>*)pacchi;

@property (nonatomic, readonly) NSString *identifier;

@property (nonatomic, readonly) NSInteger volumeMassimo;

@property (nonatomic, readonly) NSInteger peso;

@property (nonatomic, readonly) NSMutableArray<Pacco *> *pacchi;

@end
