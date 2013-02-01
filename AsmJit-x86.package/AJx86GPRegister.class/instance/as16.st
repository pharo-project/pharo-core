converting
as16
	self isHighByte
		ifTrue: [	^ self asLowByte as16 ].
	^ AJx86Registers code: (16r10 + self index)