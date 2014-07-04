subclass: aSubclassSymbol  layout: layoutClass slots: slotDefinition classVariableNames: classVarString category: aCategorySymbol

	^ PharoClassInstaller make: [ :builder |
		builder name: aSubclassSymbol;
		layoutClass: layoutClass;
		slots: slotDefinition;
		sharedVariables:  classVarString;
		category: aCategorySymbol ].
