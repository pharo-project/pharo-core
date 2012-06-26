fileIn/fileOut
fileOutDefinitionOn: aStream
	self hasDefinition ifFalse:[^self].
	aStream nextChunkPut: self definition; cr.
	self hasComment ifTrue: [
		aStream cr.
		self organization commentRemoteStr fileOutOn: aStream]