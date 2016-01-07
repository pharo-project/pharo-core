asCollectedRingDefinition

"a form used by collector (automatically obfuscates)"
	
	^ RGPackage new 
		name: (GlobalIdentifier uniqueInstance obfuscateIfNecessary: self name);
		
		annotationNamed: #obfuscationKey
		put: Privacy sendEntityNames not