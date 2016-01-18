stop: isImageQuitting
	Object flushDependents.
	Object flushEvents.
	
	self runShutdown: isImageQuitting.