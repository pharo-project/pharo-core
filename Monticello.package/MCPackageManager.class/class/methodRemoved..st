system changes
methodRemoved: anEvent
	self managersForClass: anEvent itemClass category: anEvent itemProtocol do:[:mgr| mgr modified: true].
