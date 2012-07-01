public
notify: anObject ofSystemChangesOfChange: changeKind using: oneArgumentSelector 
	"Notifies an object of system changes of the specified changeKind (#added, #removed, ...). Evaluate 'AbstractEvent allChangeKinds' to get the complete list."

	self 
		notify: anObject
		ofEvents: (self systemEventsForChange: changeKind)
		using: oneArgumentSelector