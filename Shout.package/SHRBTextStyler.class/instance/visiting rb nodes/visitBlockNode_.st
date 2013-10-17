visitBlockNode: aBlockNode 
	aBlockNode comments do: [ :comment|
		self 
			addStyle: #comment
			from: comment first
			to: comment last ].

	aBlockNode arguments do: [ :argument|
		self 
			addStyle: #blockPatternArg
			forNode: argument ].
	
	self visitNode: aBlockNode body