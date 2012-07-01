testing
testExpectedExpressionInBraceArray
	self setUpForErrorsIn: '{ 1. 2 ` Period or right brace expected ->`3 }'.
	self enumerateAllSelections.
	self setUpForErrorsIn: '{ 1. 2. ` Variable or expression expected ->`| x | x}'.
	self enumerateAllSelections