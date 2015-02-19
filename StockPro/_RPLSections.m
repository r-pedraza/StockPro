// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RPLSections.m instead.

#import "_RPLSections.h"

const struct RPLSectionsAttributes RPLSectionsAttributes = {
	.nameSection = @"nameSection",
	.numElementsInSection = @"numElementsInSection",
};

const struct RPLSectionsRelationships RPLSectionsRelationships = {
	.elements = @"elements",
};

@implementation RPLSectionsID
@end

@implementation _RPLSections

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Sections" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Sections";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Sections" inManagedObjectContext:moc_];
}

- (RPLSectionsID*)objectID {
	return (RPLSectionsID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"numElementsInSectionValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"numElementsInSection"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic nameSection;

@dynamic numElementsInSection;

- (int64_t)numElementsInSectionValue {
	NSNumber *result = [self numElementsInSection];
	return [result longLongValue];
}

- (void)setNumElementsInSectionValue:(int64_t)value_ {
	[self setNumElementsInSection:@(value_)];
}

- (int64_t)primitiveNumElementsInSectionValue {
	NSNumber *result = [self primitiveNumElementsInSection];
	return [result longLongValue];
}

- (void)setPrimitiveNumElementsInSectionValue:(int64_t)value_ {
	[self setPrimitiveNumElementsInSection:@(value_)];
}

@dynamic elements;

- (NSMutableSet*)elementsSet {
	[self willAccessValueForKey:@"elements"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"elements"];

	[self didAccessValueForKey:@"elements"];
	return result;
}

@end

