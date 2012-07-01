private-formatting
formatMethodCommentFor: aNode indentBefore: aBoolean 
	| source |
	source := aNode source.
	source isNil ifTrue: [^self].
	aNode methodComments do: 
			[:each | 
			aBoolean ifTrue: [self indent].
			codeStream
				nextPutAll: (aNode source copyFrom: each first to: each last);
				cr.
			aBoolean ifFalse: [self indent]]