testAsLowByte
	| highByteRegs lowByteRegs otherGPRegs |
	highByteRegs := {AH.
	CH.
	DH.
	BH}.
	lowByteRegs := {AL.
	CL.
	DL.
	BL}.
	otherGPRegs := AJx86Registers generalPurpose reject: [ :r | r isHighByte | r isLowByte ].
	self assert: (highByteRegs collect: [ :r | r asLowByte ]) equals: lowByteRegs.
	self assert: (lowByteRegs collect: [ :r | r asLowByte ]) equals: lowByteRegs.
	self assert: otherGPRegs size equals: 60.	"16 of each size, less the lowByteRegs"
	otherGPRegs do: [ :r | self should: [ r asLowByte ] raise: Error ]