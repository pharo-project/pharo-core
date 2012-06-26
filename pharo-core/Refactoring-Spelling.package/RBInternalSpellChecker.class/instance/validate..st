public
validate: aString
	"Do a binary search for the word aString. Answer true if the aString is in the list of known words."
	
	| check low high index word |
	check := aString asLowercase.
	low := 1. high := words size. 
	[ index := low + high // 2. low <= high ] whileTrue: [ 
		word := words at: index.
		word = check
			ifTrue: [ ^ true ].
		word < check
			ifTrue: [ low := index + 1 ]
			ifFalse: [ high := index - 1 ] ].
	^ word = check