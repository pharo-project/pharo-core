private
extractSchemeSpecificPartAndFragment: remainder
	| fragmentIndex |
	fragmentIndex := remainder indexOf: $# .
	fragmentIndex > 0
		ifTrue: [
			schemeSpecificPart := remainder copyFrom: 1 to: fragmentIndex-1.
			fragment := remainder copyFrom: fragmentIndex+1 to: remainder size]
		ifFalse: [schemeSpecificPart := remainder]