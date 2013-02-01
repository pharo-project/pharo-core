accessing
block: aBlock

	self class numberOfArguments = aBlock numArgs ifFalse: [
		self error: 'Invalid number of arguments' ].
	
	block := aBlock