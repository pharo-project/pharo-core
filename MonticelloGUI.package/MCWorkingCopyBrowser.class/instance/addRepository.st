actions
addRepository
	self newRepository ifNotNil: [:repos | 
		self addRepository: repos.
		workingCopy ifNil: [ repos morphicOpen: nil ]].
