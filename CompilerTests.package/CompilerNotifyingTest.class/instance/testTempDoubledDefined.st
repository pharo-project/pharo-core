testing
testTempDoubledDefined
	self setUpForErrorsIn: '| x ` Name is already defined ->`x | x := 1. ^x'.
	self enumerateAllSelections