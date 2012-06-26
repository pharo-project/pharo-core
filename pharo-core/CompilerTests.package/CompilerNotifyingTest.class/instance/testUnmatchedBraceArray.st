testing
testUnmatchedBraceArray
	self setUpForErrorsIn: '{ 1. 2` Period or right brace expected ->`'.
	self enumerateAllSelections.
	self setUpForErrorsIn: '{ 1. 2 ` Period or right brace expected ->`'.
	self enumerateAllSelections