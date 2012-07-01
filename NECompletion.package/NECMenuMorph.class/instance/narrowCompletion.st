actions
narrowCompletion
	| model |
	self selected: 0.
	firstVisible := 1.
	model := context model.
	model narrowWith: context completionToken.
	(model entries size = 1 and: [ context completionToken notEmpty ]) ifTrue: 
		[ self insertCompletion: (model completionAt: 1).
		self delete.
		^ false ].
	model notEmpty ifTrue: [ self selected: 1 ].
	self show.
	^ true