testing
testATempShadowingAnotherTemp
	self setUpForErrorsIn: '| x | x := 1. ^[ | ` Name is already defined ->`x | x ]'.
	self enumerateAllSelections