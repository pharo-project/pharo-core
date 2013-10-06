testExtraneousStatementAfterAReturnInABlock
	self setUpForErrorsIn: '[ ^1 ` End of statement list encounted ->`2]'.
	self enumerateAllSelections.