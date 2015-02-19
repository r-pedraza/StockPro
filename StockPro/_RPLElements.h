// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RPLElements.h instead.

@import CoreData;

extern const struct RPLElementsAttributes {
	__unsafe_unretained NSString *nameElement;
	__unsafe_unretained NSString *numStock;
	__unsafe_unretained NSString *priceElement;
} RPLElementsAttributes;

extern const struct RPLElementsRelationships {
	__unsafe_unretained NSString *seccion;
	__unsafe_unretained NSString *shoppingCart;
} RPLElementsRelationships;

@class RPLSections;
@class RPLShoppingCart;

@interface RPLElementsID : NSManagedObjectID {}
@end

@interface _RPLElements : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) RPLElementsID* objectID;

@property (nonatomic, strong) NSString* nameElement;

//- (BOOL)validateNameElement:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* numStock;

@property (atomic) int64_t numStockValue;
- (int64_t)numStockValue;
- (void)setNumStockValue:(int64_t)value_;

//- (BOOL)validateNumStock:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* priceElement;

@property (atomic) double priceElementValue;
- (double)priceElementValue;
- (void)setPriceElementValue:(double)value_;

//- (BOOL)validatePriceElement:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) RPLSections *seccion;

//- (BOOL)validateSeccion:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) RPLShoppingCart *shoppingCart;

//- (BOOL)validateShoppingCart:(id*)value_ error:(NSError**)error_;

@end

@interface _RPLElements (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveNameElement;
- (void)setPrimitiveNameElement:(NSString*)value;

- (NSNumber*)primitiveNumStock;
- (void)setPrimitiveNumStock:(NSNumber*)value;

- (int64_t)primitiveNumStockValue;
- (void)setPrimitiveNumStockValue:(int64_t)value_;

- (NSNumber*)primitivePriceElement;
- (void)setPrimitivePriceElement:(NSNumber*)value;

- (double)primitivePriceElementValue;
- (void)setPrimitivePriceElementValue:(double)value_;

- (RPLSections*)primitiveSeccion;
- (void)setPrimitiveSeccion:(RPLSections*)value;

- (RPLShoppingCart*)primitiveShoppingCart;
- (void)setPrimitiveShoppingCart:(RPLShoppingCart*)value;

@end
