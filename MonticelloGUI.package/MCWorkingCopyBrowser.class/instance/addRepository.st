actions
addRepository
	self newRepository ifNotNil: [:repos | 
		self addRepository: repos.
		repos morphicOpen: workingCopy ].
