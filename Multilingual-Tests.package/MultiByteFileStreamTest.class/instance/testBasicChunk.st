testing
testBasicChunk
	 | internalStream chunkKey |
	internalStream := self chunkString readStream.
	chunkKey := OrderedCollection new.
	[internalStream atEnd] whileFalse: 
		[ | chunk |
		chunk := internalStream nextChunk.
		chunkKey add: {internalStream position. chunk size. chunk}].
	[self writeChunkToFile.
	FileStream readOnlyFileNamed: 'chunkTest.txt' do: [:fileStream |
		1 to: chunkKey size do: [:ix | |chunk|
			chunk := fileStream nextChunk.
			self assert: (chunkKey at: ix) first equals: fileStream position.
			self assert: (chunkKey at: ix) second equals: chunk size.
			self assert: (chunkKey at: ix) last equals: chunk.]].
	] ensure: [
		 'chunkTest.txt' asFileReference delete]