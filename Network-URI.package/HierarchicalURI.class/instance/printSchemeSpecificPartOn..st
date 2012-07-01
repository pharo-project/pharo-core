printing
printSchemeSpecificPartOn: stream
	self isAbsolute
		ifTrue: [stream nextPutAll: '//'].
	authority
		ifNotNil: [self authority printOn: stream].
	super printSchemeSpecificPartOn: stream.
	query
		ifNotNil: [stream nextPutAll: query]