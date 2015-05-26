initialize
	"
	self initialize
"
	compoundTextSequence := String streamContents: 
		[ :s | 
		s nextPut: (Character value: 27).
		s nextPut: $(.
		s nextPut: $B ].
	rightHalfSequence := String streamContents: 
		[ :s | 
		s nextPut: (Character value: 27).
		s nextPut: $-.
		s nextPut: $A ]