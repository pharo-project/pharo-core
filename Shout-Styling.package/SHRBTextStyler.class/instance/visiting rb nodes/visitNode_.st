visitNode: aNode 
	aNode comments do: [ :comment|
		self 
			addStyle: #comment
			from: comment first
			to: comment last ].

	^aNode acceptVisitor: self