system changes
classModified: anEvent
	self managersForClass: anEvent item do:[:mgr| mgr modified: true].