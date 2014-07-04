subclass: aSubclassSymbol uses: aTraitCompositionOrArray slots: slotDefinition classVariableNames: classVarString category: aCategorySymbol
	^ self
		subclass: aSubclassSymbol
		uses: aTraitCompositionOrArray
		with: [ 
			PharoClassInstaller
				make: [ :builder | 
					builder
						name: aSubclassSymbol;
						slots: slotDefinition;
						sharedVariables: classVarString;
						category: aCategorySymbol ] ]