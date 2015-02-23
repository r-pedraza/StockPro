// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RPLShoppingCart.m instead.

#import "_RPLShoppingCart.h"

const struct RPLShoppingCartAttributes RPLShoppingCartAttributes = {
	.nameElement = @"nameElement",
	.numElement = @"numElement",
	.totalPrice = @"totalPrice",
};

const struct RPLShoppingCartRelationships RPLShoppingCartRelationships = {
	.elements = @"elements",
};

@implementation RPLShoppingCartID
@end

@implementation _RPLShoppingCart

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ShoppingCart" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ShoppingCart";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ShoppingCart" inManagedObjectContext:moc_];
}

- (RPLShoppingCartID*)objectID {
	return (RPLShoppingCartID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"numElementValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"numElement"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"totalPriceValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"totalPrice"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic nameElement;

@dynamic numElement;

- (int64_t)numElementValue {
	NSNumber *result = [self numElement];
	return [result longLongValue];
}

- (void)setNumElementValue:(int64_t)value_ {
	[self setNumElement:@(value_)];
}

- (int64_t)primitiveNumElementValue {
	NSNumber *result = [self primitiveNumElement];
	return [result longLongValue];
}

- (void)setPrimitiveNumElementValue:(int64_t)value_ {
	[self setPrimitiveNumElement:@(value_)];
}

@dynamic totalPrice;

- (double)totalPriceValue {
	NSNumber *result = [self totalPrice];
	return [result doubleValue];
}

- (void)setTotalPriceValue:(double)value_ {
	[self setTotalPrice:@(value_)];
}

- (double)primitiveTotalPriceValue {
	NSNumber *result = [self primitiveTotalPrice];
	return [result doubleValue];
}

- (void)setPrimitiveTotalPriceValue:(double)value_ {
	[self setPrimitiveTotalPrice:@(value_)];
}

@dynamic elements;

- (NSMutableSet*)elementsSet {
	[self willAccessValueForKey:@"elements"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"elements"];

	[self didAccessValueForKey:@"elements"];
	return result;
}

@end

