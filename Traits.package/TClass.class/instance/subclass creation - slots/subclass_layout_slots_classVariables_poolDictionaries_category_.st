subclass: aSubclassSymbol  layout: layoutClass  slots: slotDefinition classVariables: classVarDefinition poolDictionaries: someSharedPoolNames category: aCategorySymbol

	^ PharoClassInstaller make: [ :builder |
		builder name: aSubclassSymbol;
		layoutClass: layoutClass;
		slots: slotDefinition;
		sharedVariables:  classVarDefinition;
		poolDictionaries: someSharedPoolNames;
		category: aCategorySymbol ].
