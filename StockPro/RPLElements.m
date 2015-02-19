#import "RPLElements.h"
#import "RPLSections.h"

@interface RPLElements ()

// Private interface goes here.

@end

@implementation RPLElements



+(instancetype)withName:(NSString*)name
               numStock:(NSNumber*)numStock
           priceElement:(NSNumber*)priceElement
                seccion:(RPLSections*)seccion
                context:(NSManagedObjectContext*)context{
    
    
    RPLElements *elements=[NSEntityDescription insertNewObjectForEntityForName:[RPLElements entityName]
                                                        inManagedObjectContext:context];
    
    elements.nameElement=name;
    elements.numStock=numStock;
    elements.priceElement=priceElement;
    elements.seccion=seccion;



    return elements;
}

@end
