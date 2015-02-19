#import "_RPLShoppingCart.h"

@interface RPLShoppingCart : _RPLShoppingCart {}


+(instancetype)withNumElements:(NSNumber*)numElements
                         price:(NSNumber*)price
                       context:(NSManagedObjectContext*)context;


@end
