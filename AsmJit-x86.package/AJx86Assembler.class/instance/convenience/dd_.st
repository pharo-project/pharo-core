dd: aByteArray
	self assert: aByteArray size == SizeDWord.
	^ self addInstruction: (AJData data: aByteArray)