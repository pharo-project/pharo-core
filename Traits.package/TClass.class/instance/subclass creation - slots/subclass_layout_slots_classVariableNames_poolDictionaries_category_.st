subclass: aSubclassSymbol  layout: layoutClass  slots: slotDefinition classVariableNames: classVarString poolDictionaries: someSharedPoolNames category: aCategorySymbol

	^ PharoClassInstaller make: [ :builder |
		builder name: aSubclassSymbol;
		layoutClass: layoutClass;
		slots: slotDefinition;
		sharedVariables:  classVarString;
		poolDictionaries: someSharedPoolNames;
		category: aCategorySymbol ].
