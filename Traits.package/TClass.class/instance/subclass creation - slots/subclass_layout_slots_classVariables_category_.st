subclass: aSubclassSymbol  layout: layoutClass slots: slotDefinition classVariables: classVarDefinition category: aCategorySymbol

	^ PharoClassInstaller make: [ :builder |
		builder name: aSubclassSymbol;
		layoutClass: layoutClass;
		slots: slotDefinition;
		sharedVariables: classVarDefinition;
		category: aCategorySymbol ].
