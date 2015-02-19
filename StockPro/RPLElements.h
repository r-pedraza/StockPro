#import "_RPLElements.h"
@class RPLSections;

@interface RPLElements : _RPLElements {}


//Method Class

+(instancetype) withName:(NSString*)name
                numStock:(NSNumber*)numStock
            priceElement:(NSNumber*)priceElement
                 seccion:(RPLSections*)seccion
                 context:(NSManagedObjectContext*)context;

@end
