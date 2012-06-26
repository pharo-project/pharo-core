public
notify: anObject ofAllSystemChangesUsing: oneArgumentSelector 
	"Notifies an object of any system changes."

	self 
		notify: anObject
		ofEvents: self allSystemEvents
		using: oneArgumentSelector