entity: anObject

	entity := anObject.
	self setTitle: (self titleLogic cull: self entity)
	