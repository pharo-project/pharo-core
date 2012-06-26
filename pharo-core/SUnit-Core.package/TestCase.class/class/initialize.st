initialize - event
initialize
     super initialize.
	SystemAnnouncer unsubscribe: self.
	SystemAnnouncer current on: MethodAdded, MethodModified, MethodRemoved send: #methodChanged: to: self.