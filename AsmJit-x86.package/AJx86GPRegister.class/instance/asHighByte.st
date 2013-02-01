converting
asHighByte
	self isHighByte ifTrue: [ ^ self ].
	self isLowByte
		ifFalse: [ Error signal: 'Can only convert high byte 8bit register to low byte' ].
	^ AJx86Registers code: self index + 2r100