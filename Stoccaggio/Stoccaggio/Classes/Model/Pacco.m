//
//  Pacco.m
//  Stoccaggio
//
//  Created by Clemente Di Rosa on 08/02/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import "Pacco.h"

#import "Utils.h"

@implementation Pacco

///Initializer (Costruttore)
-(id)initWithCodice:(NSString *)codice mittente:(NSString *)mittente  destinatario:(NSString *)destinatario lunghezza:(NSInteger)lunghezza altezza:(NSInteger)altezza profondita:(NSInteger)profondita andMateriale:(Materiale)materiale{
    
    //creo me stesso
    self = [super init];
    
    if (self) {
        _codice = codice;
        _mittente = mittente;
        _destinatario = destinatario;
        _lunghezza = lunghezza;
        _altezza = altezza;
        _profondita = profondita;
        _materiale = materiale;
        _volume = altezza * lunghezza * profondita;
        
        switch (materiale) {
            case MaterialeFerro:
                _peso = altezza * lunghezza * profondita * kPesoSpecificoFerro;
                break;
                
            case MaterialeCarta:
                _peso = altezza * lunghezza * profondita * kPesoSpecificoCarta;
                break;
                
            case MaterialePlastica:
                
                _peso = altezza * lunghezza * profondita * kPesoSpecificoPlastica;
                break;
                
            default:
                _peso = altezza * lunghezza * profondita * 1;
                break;
        }

    }
    
    return self;
}

#pragma mark - Override
-  (NSString *)description{
    NSString *message = [NSString stringWithFormat:@"%@ \n Codice: %@ \n Mittente: %@ \n Destinatario: %@ \n Lunghezza: %li \n Altezza: %li \n Profondita: %li \n Volume: %licm3 \n Peso: %lig \n Materiale %li",
                          [super description],
                          self.codice,
                          self.mittente,
                          self.destinatario,
                          self.lunghezza,
                          self.altezza,
                          self.profondita,
                          self.volume,
                          self.peso,
                          self.materiale];
    
    return message;
}




@end
