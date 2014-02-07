execute

	self newRepository ifNotNil:
		[:repos | MCRepositoryGroup default addRepository: repos ].


	