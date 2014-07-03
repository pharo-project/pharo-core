subclass: aSubclassSymbol slots: slotDefinition classVariableNames: classVarString category: aCategorySymbol
	^ PharoClassInstaller make: [ :builder |
		builder name: aSubclassSymbol;
		slots: slotDefinition;
		sharedVariables:  classVarString;
		category: aCategorySymbol ].
