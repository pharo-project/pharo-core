= other 
	self class = other class ifFalse: [ ^ false ].
	self item = other item ifFalse: [ ^ false ].
	^ true