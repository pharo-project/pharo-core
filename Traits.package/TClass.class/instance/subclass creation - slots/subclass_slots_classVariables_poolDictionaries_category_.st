subclass: aSubclassSymbol slots: slotDefinition classVariables: classVarDefinition poolDictionaries: someSharedPoolNames category: aCategorySymbol

	^ PharoClassInstaller make: [ :builder |
		builder name: aSubclassSymbol;
		slots: slotDefinition;
		sharedVariables:  classVarDefinition;
		poolDictionaries: someSharedPoolNames;
		category: aCategorySymbol ].
