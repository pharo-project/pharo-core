initialization
updateAfterClassChange
	"It is possible that some the classes comprising the hierarchy have changed, so reinitialize the entire browser."

	(centralClass notNil and: [centralClass isObsolete not])
		ifTrue: [self initHierarchyForClass: centralClass]