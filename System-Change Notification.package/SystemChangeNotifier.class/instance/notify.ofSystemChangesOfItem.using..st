public
notify: anObject ofSystemChangesOfItem: itemKind  using: oneArgumentSelector 
	"Notifies an object of system changes of the specified itemKind (#class, #method, #protocol, ...). Evaluate 'AbstractEvent allItemKinds' to get the complete list."

	self 
		notify: anObject
		ofEvents: (self systemEventsForItem: itemKind)
		using: oneArgumentSelector