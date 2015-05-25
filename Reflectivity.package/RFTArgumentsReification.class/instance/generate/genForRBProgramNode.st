genForRBProgramNode
	node numArgs = 0
		ifTrue: [ ^ #() asLiteralNode ].
	node numArgs <= 4
		ifTrue: [ ^ RBMessageNode receiver: Array asLiteralNode selector: (#braceWith numArgs: node numArgs) arguments: node arguments ].
	node numArgs > 4
		ifTrue: [ 
			| stream messages |
			stream := RBMessageNode
				receiver: Array asLiteralNode
				selector: #braceStream:
				argument: node arguments size asLiteralNode.
			messages := (node arguments collect: [ :each | RBMessageNode receiver: stream selector: #nextPut: argument: each ])
				asOrderedCollection.
			messages add: (RBMessageNode receiver: stream selector: #braceArray).
			^ RBCascadeNode messages: messages ]