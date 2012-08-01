system changes
methodMoved: anEvent
	self managersForClass: anEvent itemClass 
		category: anEvent itemOldProtocol do: 
			[ :mgr | mgr modified: true ].
	self methodModified: anEvent.