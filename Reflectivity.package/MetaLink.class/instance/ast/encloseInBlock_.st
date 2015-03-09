encloseInBlock: nodeOrCollection
	"Creates a new block node from a node or a list of nodes"
	| body |
	body := nodeOrCollection isCollection
		ifTrue: [ RBSequenceNode statements: nodeOrCollection ]
		ifFalse:[
			nodeOrCollection isSequence
				ifTrue: [ nodeOrCollection ]
				ifFalse: [ RBSequenceNode statements: {nodeOrCollection} ] ].
	^ RBBlockNode body: body 