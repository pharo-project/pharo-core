formatBlock: aBlockNode
	codeStream nextPutAll: self stringInsideBlocks.
	self formatBlockArgumentsFor: aBlockNode.
	(self willBeMultiline: aBlockNode body)
		ifTrue: [ self newLine ].
	self visitNode: aBlockNode body.
	(self lineUpBlockBrackets and: [ self willBeMultiline: aBlockNode body ])
		ifTrue: [ self newLine ]
		ifFalse: [ codeStream nextPutAll: self stringInsideBlocks ]