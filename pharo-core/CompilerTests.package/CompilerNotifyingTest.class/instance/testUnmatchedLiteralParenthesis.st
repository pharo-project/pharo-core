testing
testUnmatchedLiteralParenthesis
	self setUpForErrorsIn: '#` Unmatched parenthesis ->`( 1 2'.
	self enumerateAllSelections.
	self setUpForErrorsIn: '#` Unmatched parenthesis ->`( 1 2 '.
	self enumerateAllSelections.