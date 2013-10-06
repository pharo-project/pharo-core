createClass
	^Trait
		named: name
		uses: (self class compiler evaluate: self traitCompositionString)
		category: category
		
