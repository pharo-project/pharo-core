assuredChangeSetNamed: aName
	"Answer a change set of the given name.  If one already exists, answer that, else create a new one and answer it."

	| existing |
	^ (existing := self named: aName)
		ifNotNil: [existing]
		ifNil: [self basicNewChangeSet: aName]