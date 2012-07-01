snapshot and quit
shutDownImage: quitting
	Object flushDependents.
	Object flushEvents.

	self processShutDownList: quitting.