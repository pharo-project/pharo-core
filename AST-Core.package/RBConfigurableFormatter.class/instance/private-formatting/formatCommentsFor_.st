formatCommentsFor: aNode 
	originalSource isNil ifTrue: [^self].
	aNode comments do: 
			[:each | 
			codeStream
				space;
				nextPutAll: (originalSource copyFrom: each start to: each stop)]