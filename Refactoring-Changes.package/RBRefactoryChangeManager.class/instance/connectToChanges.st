initialize-release
connectToChanges
	SystemAnnouncer announcer weak
		on: CategoryAdded,
			CategoryRemoved,
			CategoryRenamed,
			ClassAdded,
			ClassModifiedClassDefinition,
			ClassRemoved,
			ClassRenamed,
			ClassReorganized,
			MethodAdded,
			MethodModified,
			MethodRemoved,
			ProtocolAdded,
			ProtocolRemoved
		send: #update:
		to: self.