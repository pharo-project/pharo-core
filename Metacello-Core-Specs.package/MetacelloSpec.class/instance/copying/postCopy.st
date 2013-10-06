postCopy

	super postCopy.
	loader ~~ nil  ifTrue: [ self loader: loader ]