subclass: aSubclassSymbol slots: slotDefinition classVariableNames: classVarString poolDictionaries: someSharedPoolNames category: aCategorySymbol

	^ PharoClassInstaller make: [ :builder |
		builder name: aSubclassSymbol;
		slots: slotDefinition;
		sharedVariables:  classVarString;
		poolDictionaries: someSharedPoolNames;
		category: aCategorySymbol ].
