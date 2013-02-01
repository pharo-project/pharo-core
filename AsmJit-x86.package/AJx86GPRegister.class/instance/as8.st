converting
as8
	self is8 ifTrue: [ ^ self ].
	(self index >= 4 and: [ self index <= 7 ] )
		ifTrue: [ Error signal: 'Cannot map ', self asString, ' to corrsponding 8bit register'].
	^ AJx86Registers code: (0 + self index)