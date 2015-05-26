printOn: aStream

	super printOn: aStream.
	self title value ifNotNil: [:t | aStream nextPutAll: ' ''', t , '''' ]