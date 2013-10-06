fileEntriesDo: aBlock
	fileSystem ifNil: [ ^ self ].
	self root fileEntriesDo: aBlock 