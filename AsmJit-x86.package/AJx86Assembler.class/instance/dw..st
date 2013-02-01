convenience
dw: aByteArray
	self assert: aByteArray size == SizeWord.
	^ self addInstruction: (AJData data: aByteArray)