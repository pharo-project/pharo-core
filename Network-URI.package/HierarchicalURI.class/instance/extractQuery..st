private
extractQuery: remainder
	| queryIndex |
	queryIndex := remainder indexOf: $?.
	queryIndex > 0
		ifFalse: [^remainder].
	query := remainder copyFrom: queryIndex to: remainder size.
	^remainder copyFrom: 1 to: queryIndex-1