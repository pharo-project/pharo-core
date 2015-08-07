visitLiteralNode: aLiteralNode
	| value |
	value := aLiteralNode value.
	self 
		addStyle: (self literalStyleSymbol: value)
		attribute: (RubTextClassLink class: value class)
		forNode: aLiteralNode