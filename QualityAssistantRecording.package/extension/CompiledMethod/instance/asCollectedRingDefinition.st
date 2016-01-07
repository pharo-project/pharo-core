asCollectedRingDefinition

"a form used by collector (automatically obfuscates)"

	| globalID |
	
	globalID := GlobalIdentifier uniqueInstance.
	
	
	^ RGMethodDefinition new 
		name: (globalID obfuscateIfNecessary: self selector);
		
		annotationNamed: RGMethodDefinition classNameKey
		put: (globalID obfuscateIfNecessary: self methodClass name);
		
		isMetaSide: self methodClass isMeta;
		protocol: (globalID obfuscateIfNecessary: self category);
		sourceCode: (Privacy sendSourceCode ifTrue: [ self sourceCode ]);
		stamp: self timeStamp;
		package: self package asCollectedRingDefinition;
		
		annotationNamed: #obfuscationKey
		put: Privacy sendEntityNames not;
		
		asPassive.