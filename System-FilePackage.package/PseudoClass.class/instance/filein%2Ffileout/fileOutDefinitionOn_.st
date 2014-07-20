fileOutDefinitionOn: aStream
	self hasDefinition
		ifFalse: [ ^ self ].
	aStream
		nextChunkPut: self definition;
		cr.
	self hasComment
		ifFalse: [ ^ self ].
	aStream cr.
	self organization commentRemoteString fileOutOn: aStream