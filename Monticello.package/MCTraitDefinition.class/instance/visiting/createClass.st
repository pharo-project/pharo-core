createClass
	^Trait
		named: name
		uses: (Smalltalk compiler evaluate: self traitCompositionString)
		category: category
		
