stringWithoutInitialCommentFrom: aString
	^ (aString isEmpty not and: [ aString first = $" ])
		ifFalse: [ aString trimBoth ]
		ifTrue: [ 
			(aString
				copyFrom: (aString findAnySubStr: '"' startingAt: 2) + 1 
				to: aString size) trimBoth ]