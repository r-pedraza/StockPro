#import "RPLSections.h"

@interface RPLSections ()

// Private interface goes here.

@end

@implementation RPLSections

#pragma mark - Methods Class

+(instancetype)withName:(NSString*)name
            numElements:(NSNumber*)numElementsInSection
                context:(NSManagedObjectContext*) context{

    RPLSections *section=[NSEntityDescription insertNewObjectForEntityForName:[RPLSections entityName]
                                                       inManagedObjectContext:context];

    section.nameSection=name;
    section.numElementsInSection=numElementsInSection;
    return section;
}

@end
