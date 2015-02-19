// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RPLShoppingCart.h instead.

@import CoreData;

extern const struct RPLShoppingCartAttributes {
	__unsafe_unretained NSString *numElement;
	__unsafe_unretained NSString *totalPrice;
} RPLShoppingCartAttributes;

extern const struct RPLShoppingCartRelationships {
	__unsafe_unretained NSString *elements;
} RPLShoppingCartRelationships;

@class RPLElements;

@interface RPLShoppingCartID : NSManagedObjectID {}
@end

@interface _RPLShoppingCart : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) RPLShoppingCartID* objectID;

@property (nonatomic, strong) NSNumber* numElement;

@property (atomic) int64_t numElementValue;
- (int64_t)numElementValue;
- (void)setNumElementValue:(int64_t)value_;

//- (BOOL)validateNumElement:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* totalPrice;

@property (atomic) double totalPriceValue;
- (double)totalPriceValue;
- (void)setTotalPriceValue:(double)value_;

//- (BOOL)validateTotalPrice:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *elements;

- (NSMutableSet*)elementsSet;

@end

@interface _RPLShoppingCart (ElementsCoreDataGeneratedAccessors)
- (void)addElements:(NSSet*)value_;
- (void)removeElements:(NSSet*)value_;
- (void)addElementsObject:(RPLElements*)value_;
- (void)removeElementsObject:(RPLElements*)value_;

@end

@interface _RPLShoppingCart (CoreDataGeneratedPrimitiveAccessors)

- (NSNumber*)primitiveNumElement;
- (void)setPrimitiveNumElement:(NSNumber*)value;

- (int64_t)primitiveNumElementValue;
- (void)setPrimitiveNumElementValue:(int64_t)value_;

- (NSNumber*)primitiveTotalPrice;
- (void)setPrimitiveTotalPrice:(NSNumber*)value;

- (double)primitiveTotalPriceValue;
- (void)setPrimitiveTotalPriceValue:(double)value_;

- (NSMutableSet*)primitiveElements;
- (void)setPrimitiveElements:(NSMutableSet*)value;

@end
