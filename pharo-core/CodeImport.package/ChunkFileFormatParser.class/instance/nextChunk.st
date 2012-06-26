testing
nextChunk
	| out next |
	out := (String new: 1000) writeStream.
	readStream skipSeparators.
	[ self isChunkEnd ] whileFalse: [
		out nextPut: self next.
	].
	^out contents