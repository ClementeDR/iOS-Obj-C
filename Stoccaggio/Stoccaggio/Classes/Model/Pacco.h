//
//  Pacco.h
//  Stoccaggio
//
//  Created by Clemente Di Rosa on 08/02/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Materiale){
    MaterialeFerro = 0,
    MaterialeCarta = 2,
    MaterialePlastica = 1
};

@interface Pacco : NSObject

-(id)initWithCodice:(NSString *)codice
           mittente:(NSString *)mittente
       destinatario:(NSString *)destinatario
          lunghezza:(NSInteger)lunghezza
            altezza:(NSInteger)altezza
         profondita:(NSInteger)profondita
       andMateriale:(Materiale)materiale;


/// Codice del pacco
@property (nonatomic, strong, readonly) NSString *codice;

/// Chi ha spedito il pacco
@property (nonatomic, strong, readonly) NSString *mittente;

/// Chi riceve il pacco
@property (nonatomic, strong) NSString *destinatario;

/// Prodondità del pacco
@property (nonatomic, readonly) NSInteger profondita;

/// Lunghezza del pacco
@property (nonatomic, readonly) NSInteger lunghezza;

/// Altezza del pacco
@property (nonatomic, readonly) NSInteger altezza;

/// Volume del pacco
@property (nonatomic, readonly) NSInteger volume;

/// Peso del pacco
@property (nonatomic, readonly) NSInteger peso;

/// Materiale del contenuto
@property (nonatomic, readonly) Materiale materiale;


@end
