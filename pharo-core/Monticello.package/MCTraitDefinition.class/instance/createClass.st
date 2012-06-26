visiting
createClass
	^Trait
		named: name
		uses: (self class evaluatorClass evaluate: self traitCompositionString)
		category: category
		
