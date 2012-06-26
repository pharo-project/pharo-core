system changes
methodModified: anEvent
	^self managersForClass: anEvent itemClass selector: anEvent itemSelector do:[:mgr| mgr modified: true].