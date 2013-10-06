huntForDashAndRemove: aString
	| n |
	(n := aString lastIndexOf: $-) > 0 ifTrue: [^aString copyFrom: n+1 to: aString size].
	^aString
