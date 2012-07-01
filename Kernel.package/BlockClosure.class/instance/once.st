evaluating
once
	"Answer and remember the receiver value, answering exactly the same object in any further sends
	 of once or value until the receiver become uncached.  This allows one to intern values with the idiom
		myResourceMethod
			^[expression] once.
	 The expression will be evaluated once and its result returned for any subsequent evaluations.
	 Originally by Travis Griggs, from whom we copy this idea with thanks."
	
	numArgs ~= 0 ifTrue:
		[self error: 'once should only be used with niladic blocks'].
	self becomeCached.
	^self once