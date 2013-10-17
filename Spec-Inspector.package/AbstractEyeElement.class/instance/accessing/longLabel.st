longLabel
	^ (self label 
		ifNotNil: [ :aString | aString, ': ' ]
		ifNil: [ '' ]), (self value printStringLimitedTo: 150)