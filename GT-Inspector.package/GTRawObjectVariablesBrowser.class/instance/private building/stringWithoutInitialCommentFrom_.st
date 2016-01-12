stringWithoutInitialCommentFrom: aString
	^ (aString trimLeft isEmpty not and: [ aString trimLeft first = $" ])
		ifFalse: [ aString trimBoth ]
		ifTrue: [|startIndex|
			startIndex := aString findAnySubstring: '"' startingAt: (aString indexOf: $") + 1.
			(startIndex = (aString size + 1)) ifTrue: [ "No content if a comment cannot be identified. " ^ '' ].
			(aString
				copyFrom: startIndex + 1 
				to: aString size) trimBoth ]