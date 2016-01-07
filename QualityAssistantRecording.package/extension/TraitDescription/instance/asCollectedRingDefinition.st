asCollectedRingDefinition

	"a form used by collector (automatically obfuscates)"

	| globalID |
	
	globalID := GlobalIdentifier uniqueInstance.
	
	^ RGTraitDefinition new
		name: (globalID obfuscateIfNecessary: self name);
		category: (globalID obfuscateIfNecessary: self category);
		superclassName: (globalID obfuscateIfNecessary: self superclass name);
		annotationNamed: RGElementDefinition isMetaSideKey put: self isClassTrait;
		definitionSource: (Privacy sendSourceCode ifTrue: [ self definition ]);
		package: self package asCollectedRingDefinition;
		
		annotationNamed: #obfuscationKey
		put: Privacy sendEntityNames not