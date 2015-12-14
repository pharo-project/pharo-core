initialize
	"Alien initialize"
	LoadedLibraries isNil ifTrue:
		[LoadedLibraries := Dictionary new].
	GCMallocedAliens isNil ifTrue:
		[GCMallocedAliens := AlienWeakTable newForOwner: self].
	self ensureInSpecialObjectsArray.
	self ensureNotifiedAtStartup