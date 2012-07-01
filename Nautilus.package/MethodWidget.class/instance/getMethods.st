protocol
getMethods
self haltOnce.
	^ methods ifNil: [ methods := self loadMethods ].