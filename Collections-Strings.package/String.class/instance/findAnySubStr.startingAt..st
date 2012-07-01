accessing
findAnySubStr: delimiters startingAt: start 
	"Answer the index of the character within the receiver, starting at start, that begins a substring matching one of the delimiters.  delimiters is an Array of Strings (Characters are permitted also).  If the receiver does not contain any of the delimiters, answer size + 1."

	^delimiters inject: 1 + self size into: [:min :delim |
		"delim may be a char, a string of length 1, or a substring"
		| ind |
		ind := delim isCharacter 
			ifTrue: [self indexOf: delim
						startingAt: start ifAbsent: [min]]
			ifFalse: [self indexOfSubCollection: delim 
						startingAt: start ifAbsent: [min]].
		min min: ind]