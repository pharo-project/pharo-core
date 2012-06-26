accessing
environment

	self model 
		ifNotNil: [:m| ^m environment].
	self error: 'The model should probably not be nil'