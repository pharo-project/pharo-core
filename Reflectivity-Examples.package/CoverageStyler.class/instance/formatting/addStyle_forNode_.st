addStyle: styleSymbol forNode: anRBNode
	| style | 
	style := anRBNode hasBeenExecuted ifTrue: [#invalid] ifFalse: [ #default].
	self addAttributes: (self attributesFor: style ) forNode: anRBNode.