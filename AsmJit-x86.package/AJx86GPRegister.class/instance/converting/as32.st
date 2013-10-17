as32
	^ self isHighByte
		ifTrue: [ self asLowByte as32 ]
		ifFalse: [ 
			AJx86Registers
				generalPurposeWithIndex: self index
				size: 4
				requiresRex: self index > 7
				prohibitsRex: false ]