private-formatting
formatTemporariesFor: aSequenceNode 
	| temps |
	temps := aSequenceNode temporaries.
	temps isEmpty ifTrue: [^self].
	codeStream nextPutAll: '| '.
	temps do: 
			[:each | 
			self visitArgument: each.
			codeStream nextPut: $ ].
	codeStream nextPut: $|.
	self indent