subclass: aSubclassSymbol slots: slotDefinition classVariables: classVarDefinition category: aCategorySymbol

	^ PharoClassInstaller make: [ :builder |
		builder name: aSubclassSymbol;
		superclass: self;
		slots: slotDefinition;
		sharedVariables: classVarDefinition;
		category: aCategorySymbol ].
