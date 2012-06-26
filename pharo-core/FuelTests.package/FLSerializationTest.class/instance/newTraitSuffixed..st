traits-factory
newTraitSuffixed: suffix

	^ Trait 
		named: (self traitNamePrefix, suffix) asSymbol
		uses: Array new 
		category: (self classFactory packageName, '-', self classFactory defaultCategoryPostfix) asSymbol