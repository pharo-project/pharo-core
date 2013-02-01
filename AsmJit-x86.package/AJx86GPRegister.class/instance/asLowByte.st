converting
asLowByte
	self isLowByte ifTrue: [ ^ self ].
	self isHighByte
		ifFalse: [ Error signal: 'Can only convert high byte 8bit register to low byte' ].
	^ AJx86Registers code: self index - 2r100