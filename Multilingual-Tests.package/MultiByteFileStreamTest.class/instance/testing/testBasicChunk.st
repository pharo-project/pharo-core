testBasicChunk
	 | internalStream chunkKey |
	internalStream := ChunkReadStream on: self chunkString readStream.
	chunkKey := OrderedCollection new.
	[internalStream atEnd] whileFalse: 
		[ | chunk |
		chunk := internalStream next.
		chunkKey add: {internalStream position. chunk size. chunk}].
	[self writeChunkToFile.
	(File openReadOnlyFileNamed: 'chunkTest.txt' asFileReference fullName) readStreamDo: [:fileStream | | stream |
		stream := ChunkReadStream on: (ZnCharacterReadStream on: fileStream).
		1 to: chunkKey size do: [:ix | |chunk|
			chunk := stream next.
			self assert: (chunkKey at: ix) second equals: chunk size.
			self assert: (chunkKey at: ix) last equals: chunk.]].
	] ensure: [
		 'chunkTest.txt' asFileReference delete]