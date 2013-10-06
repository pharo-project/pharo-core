peekByte
	bufStream atEnd
		ifTrue:
			[self atEnd ifTrue: [^nil].
			self fillBuffer].
	^bufStream peek