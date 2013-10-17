formatBlockArgumentsFor: aBlockNode
	aBlockNode arguments isEmpty
		ifTrue: [ ^ self ].
	aBlockNode arguments
		do: [ :each | 
			codeStream nextPut: $:.
			self visitNode: each.
			FormatCommentWithStatements
				ifTrue: [ self formatCommentsFor: each ].
			self space ].
	codeStream nextPutAll: '| '