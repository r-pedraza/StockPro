#import "RPLShoppingCart.h"

@interface RPLShoppingCart ()

// Private interface goes here.

@end


@implementation RPLShoppingCart
+(instancetype)withNumElements:(NSNumber*)numElements
                         price:(NSNumber*)price
                       context:(NSManagedObjectContext*)context{


    RPLShoppingCart *shoppingCart=[NSEntityDescription insertNewObjectForEntityForName:[RPLShoppingCart entityName]
                                                                inManagedObjectContext:context];
    
    shoppingCart.numElement=numElements;
    shoppingCart.primitiveTotalPrice=price;
    
    
    return shoppingCart;

}


@end
