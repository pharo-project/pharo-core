subclass: aSubclassSymbol uses: aTraitCompositionOrArray  layout: layoutClass slots: slotDefinition classVariables: classVarDefinition poolDictionaries: someSharedPoolNames category: aCategorySymbol
	^ self
		subclass: aSubclassSymbol
		uses: aTraitCompositionOrArray
		with: [ 
			PharoClassInstaller
				make: [ :builder | 
					builder
						name: aSubclassSymbol;
						layoutClass: layoutClass;
						slots: slotDefinition;
						sharedVariables: classVarDefinition;
						poolDictionaries: someSharedPoolNames;
						category: aCategorySymbol ] ]