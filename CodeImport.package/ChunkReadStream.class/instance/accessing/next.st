next

	| out |
	out := (String new: 1000) writeStream.
	self skipSeparators.
	[ self isChunkEnd ] whileFalse: [
		out nextPut: self basicNext.

	].
	^out contents