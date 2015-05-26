testAsHighByte
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
	self assert: (highByteRegs collect: [ :r | r asHighByte ]) equals: highByteRegs.
	self assert: (lowByteRegs collect: [ :r | r asHighByte ]) equals: highByteRegs.
	self assert: otherGPRegs size equals: 60.	"16 of each size, less the lowByteRegs"
	otherGPRegs do: [ :r | self should: [ r asHighByte ] raise: Error ]