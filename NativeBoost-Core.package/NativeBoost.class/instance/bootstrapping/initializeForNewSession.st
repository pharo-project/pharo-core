initializeForNewSession

	"let NBExternalStructure recalculate its fields"
	NBExternalStructure initializeForNewSession.
	NBExternalArray initializeForNewSession.
	NBExternalTypeValue initializeForNewSession.

	"notify any observers about session change"
	self class announcer announce: NBSessionChangeAnnouncement 