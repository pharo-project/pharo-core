system changes
classMoved: anEvent
	self classModified: anEvent.
	self managersForCategory: anEvent oldCategory do:[:mgr| mgr modified: true].