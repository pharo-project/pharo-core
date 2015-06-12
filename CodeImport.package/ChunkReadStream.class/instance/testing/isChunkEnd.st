isChunkEnd
	nextChar := decoratedStream next.
	^ nextChar isNil
		or: [ nextChar = self terminatorMark
			and: [ decoratedStream peek ~= self terminatorMark ] ]