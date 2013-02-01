converting
as64
	self isHighByte
		ifTrue: [	^ self asLowByte as64 ].
	^ AJx86Registers code: (16r30 + self index)