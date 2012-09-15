system changes
methodMoved: anEvent
	self managersForClass: anEvent methodClass 
		category: anEvent oldProtocol do: 
			[ :mgr | mgr modified: true ].
	self methodModified: anEvent.