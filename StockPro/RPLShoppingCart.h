#import "_RPLShoppingCart.h"

@interface RPLShoppingCart : _RPLShoppingCart {}


+(instancetype)withName:(NSString*)nameElelent
            numElements:(NSNumber*)numElements
                  price:(NSNumber*)price
                context:(NSManagedObjectContext*)context;


@end
