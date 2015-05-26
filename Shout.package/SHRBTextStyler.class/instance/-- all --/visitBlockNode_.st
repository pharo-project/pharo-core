visitBlockNode: aBlockNode 
	aBlockNode comments do: [ :comment|
		self 
			addStyle: #comment
			from: comment start
			to: comment stop ].

	aBlockNode arguments do: [ :argument|
		self 
			addStyle: #blockPatternArg
			forNode: argument ].
	
	self visitNode: aBlockNode body