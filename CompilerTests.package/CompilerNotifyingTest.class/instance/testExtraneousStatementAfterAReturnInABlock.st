testing
testExtraneousStatementAfterAReturnInABlock
	self setUpForErrorsIn: '[ ^1 ` End of block expected ->`2]'.
	self enumerateAllSelections.