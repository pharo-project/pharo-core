tests
testWriteStreamifPresent
	| ref stream |
	ref := filesystem / 'plonk'.
	[stream := ref writeStreamIfPresent: [self signalFailure: 'Should not reach here'].
	self assert: (stream class = FileSystemWriteStream)]
		ensure: [stream ifNotNil: [stream close]]