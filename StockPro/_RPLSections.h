// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RPLSections.h instead.

@import CoreData;

extern const struct RPLSectionsAttributes {
	__unsafe_unretained NSString *nameSection;
	__unsafe_unretained NSString *numElementsInSection;
} RPLSectionsAttributes;

extern const struct RPLSectionsRelationships {
	__unsafe_unretained NSString *elements;
} RPLSectionsRelationships;

@class RPLElements;

@interface RPLSectionsID : NSManagedObjectID {}
@end

@interface _RPLSections : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) RPLSectionsID* objectID;

@property (nonatomic, strong) NSString* nameSection;

//- (BOOL)validateNameSection:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* numElementsInSection;

@property (atomic) int64_t numElementsInSectionValue;
- (int64_t)numElementsInSectionValue;
- (void)setNumElementsInSectionValue:(int64_t)value_;

//- (BOOL)validateNumElementsInSection:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *elements;

- (NSMutableSet*)elementsSet;

@end

@interface _RPLSections (ElementsCoreDataGeneratedAccessors)
- (void)addElements:(NSSet*)value_;
- (void)removeElements:(NSSet*)value_;
- (void)addElementsObject:(RPLElements*)value_;
- (void)removeElementsObject:(RPLElements*)value_;

@end

@interface _RPLSections (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveNameSection;
- (void)setPrimitiveNameSection:(NSString*)value;

- (NSNumber*)primitiveNumElementsInSection;
- (void)setPrimitiveNumElementsInSection:(NSNumber*)value;

- (int64_t)primitiveNumElementsInSectionValue;
- (void)setPrimitiveNumElementsInSectionValue:(int64_t)value_;

- (NSMutableSet*)primitiveElements;
- (void)setPrimitiveElements:(NSMutableSet*)value;

@end
