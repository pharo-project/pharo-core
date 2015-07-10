addStyle: styleSymbol attribute: additionalAttribute forNode: anRBNode
	| style |
	style := anRBNode hasBeenExecuted ifTrue: [#invalid] ifFalse: [ #default].
	self 
		addStyle: style
		attributes: { additionalAttribute }
		forNode: anRBNode.