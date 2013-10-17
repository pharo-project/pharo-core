as8
	"8-bit low-byte registers require REX if they have a high index (>7), or if they are one of BPL, SIL, DIL, SPL (indices 4-7).
	The only way to get AH, BH, CH, or DH out of this method is to send it to one of those registers."

	^ self is8
		ifTrue: [ self ]
		ifFalse: [ 
			AJx86Registers
				generalPurposeWithIndex: self index
				size: 1
				requiresRex: self index > 3
				prohibitsRex: false ]