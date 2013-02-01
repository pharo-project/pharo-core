converting
as32
	self isHighByte
		ifTrue: [	^ self asLowByte as32 ].
	^ AJx86Registers code: (16r20 + self index)