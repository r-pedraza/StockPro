#import "_RPLSections.h"

@interface RPLSections : _RPLSections {}

//Methods Class
+(instancetype)withName:(NSString*)name
            numElements:(NSNumber*)numElementsInSection
                context:(NSManagedObjectContext*) context;
@end
