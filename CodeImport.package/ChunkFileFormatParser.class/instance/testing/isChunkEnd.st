isChunkEnd
	nextChar := readStream next.
	^ nextChar isNil or: [ nextChar = self terminatorMark and: [ readStream peek ~= self terminatorMark ] ]