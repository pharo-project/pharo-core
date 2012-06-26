actions
addRepository
	self newRepository ifNotNil:
		[:repos | self addRepository: repos ].
