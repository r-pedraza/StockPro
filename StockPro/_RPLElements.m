// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RPLElements.m instead.

#import "_RPLElements.h"

const struct RPLElementsAttributes RPLElementsAttributes = {
	.nameElement = @"nameElement",
	.numStock = @"numStock",
	.priceElement = @"priceElement",
};

const struct RPLElementsRelationships RPLElementsRelationships = {
	.seccion = @"seccion",
	.shoppingCart = @"shoppingCart",
};

@implementation RPLElementsID
@end

@implementation _RPLElements

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Elements" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Elements";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Elements" inManagedObjectContext:moc_];
}

- (RPLElementsID*)objectID {
	return (RPLElementsID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"numStockValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"numStock"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"priceElementValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"priceElement"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic nameElement;

@dynamic numStock;

- (int64_t)numStockValue {
	NSNumber *result = [self numStock];
	return [result longLongValue];
}

- (void)setNumStockValue:(int64_t)value_ {
	[self setNumStock:@(value_)];
}

- (int64_t)primitiveNumStockValue {
	NSNumber *result = [self primitiveNumStock];
	return [result longLongValue];
}

- (void)setPrimitiveNumStockValue:(int64_t)value_ {
	[self setPrimitiveNumStock:@(value_)];
}

@dynamic priceElement;

- (double)priceElementValue {
	NSNumber *result = [self priceElement];
	return [result doubleValue];
}

- (void)setPriceElementValue:(double)value_ {
	[self setPriceElement:@(value_)];
}

- (double)primitivePriceElementValue {
	NSNumber *result = [self primitivePriceElement];
	return [result doubleValue];
}

- (void)setPrimitivePriceElementValue:(double)value_ {
	[self setPrimitivePriceElement:@(value_)];
}

@dynamic seccion;

@dynamic shoppingCart;

@end

