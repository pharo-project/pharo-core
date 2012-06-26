system changes
methodMoved: anEvent
	self managersForClass: anEvent itemClass category: anEvent oldCategory do:[:mgr| mgr modified: true].
	self methodModified: anEvent.