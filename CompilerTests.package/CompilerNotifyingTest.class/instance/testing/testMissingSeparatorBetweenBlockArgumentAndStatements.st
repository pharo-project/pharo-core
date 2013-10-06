testMissingSeparatorBetweenBlockArgumentAndStatements
	self setUpForErrorsIn: '[ :x ` Vertical bar expected ->`x + 1 ]'.
	self enumerateAllSelections