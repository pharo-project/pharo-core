enumerating
named: aName
	"Return the change set of the given name, or nil if none found.  1/22/96 sw"

	^ AllChangeSets
			detect: [:aChangeSet | aChangeSet name = aName]
			ifNone: [nil]