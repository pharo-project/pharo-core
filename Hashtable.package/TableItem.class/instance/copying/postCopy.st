postCopy
	super postCopy.
	next isNil ifFalse: [
		next := next copy ]