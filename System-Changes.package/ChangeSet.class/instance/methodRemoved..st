change logging
methodRemoved: anEvent
	self
		removeSelector: anEvent selector
		class: anEvent methodClass
		priorMethod: anEvent methodRemoved
		lastMethodInfo: {anEvent methodRemoved sourcePointer. anEvent protocol}