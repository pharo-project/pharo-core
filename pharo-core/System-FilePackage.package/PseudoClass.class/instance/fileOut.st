filein/fileout
fileOut
	| internalStream |
	internalStream := (String new: 1000) writeStream.
	self fileOutOn: internalStream.
	self needsInitialize ifTrue:[
		internalStream cr; nextChunkPut: self name,' initialize'.
	].

	FileStream writeSourceCodeFrom: internalStream baseName: self name isSt: true