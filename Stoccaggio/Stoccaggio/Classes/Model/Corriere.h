//
//  Corriere.h
//  Stoccaggio
//
//  Created by Clemente Di Rosa on 08/02/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Corriere : NSObject
-(id)initWithVolumeMassimo:(NSInteger)volumeMassimo andPeso:(NSInteger)peso;


@property (nonatomic, readonly) NSInteger volumeMassimo;

@property (nonatomic, readonly) NSInteger peso;


@end
