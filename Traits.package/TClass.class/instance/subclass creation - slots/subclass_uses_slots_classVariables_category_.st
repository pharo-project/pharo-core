subclass: aSubclassSymbol uses: aTraitCompositionOrArray slots: slotDefinition classVariables: classVarDefinition category: aCategorySymbol
	^ self
		subclass: aSubclassSymbol
		uses: aTraitCompositionOrArray
		with: [ 
			PharoClassInstaller
				make: [ :builder | 
					builder
						name: aSubclassSymbol;
						slots: slotDefinition;
						sharedVariables: classVarDefinition;
						category: aCategorySymbol ] ]