testing
testMissingExpression
	self setUpForErrorsIn: '| x | x := ` Expression expected ->'.
	self enumerateAllSelections