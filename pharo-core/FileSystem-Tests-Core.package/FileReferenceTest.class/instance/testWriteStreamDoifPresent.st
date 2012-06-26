tests
testWriteStreamDoifPresent
	| ref s |
	ref := filesystem / 'plonk'.
	ref 
		writeStreamDo:
			[:stream |
			s := stream.
			self assert: stream class = FileSystemWriteStream.
			self assert: stream isOpen]
		ifPresent: [self signalFailure: 'The file does not exist!'].
	self deny: s isOpen
		