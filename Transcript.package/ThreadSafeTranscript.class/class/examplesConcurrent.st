examples
examplesConcurrent
	"self examplesConcurrent"

	| tt |
	Smalltalk globals at: #STranscript ifAbsent: [ self installThreadSafeAsSTranscript ].
	tt := Smalltalk globals at: #STranscript.
	tt open.
	[ 
	1 to: 10 do: [ :i | 
		tt
			nextPutAll: i printString;
			nextPutAll: '*'.
		Processor yield ].
	tt flush ] fork.
	[ 
	100 to: 110 do: [ :i | 
		tt
			nextPutAll: i printString;
			nextPutAll: '-'.
		Processor yield ].
	tt flush ] fork