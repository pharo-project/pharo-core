private
methodRefersOnlyOnceToTemp: offset
	| nRefs byteCode extension scanner |
	nRefs := 0.
	offset <= 15
		ifTrue:
			[byteCode := 16 + offset.
			(InstructionStream on: method) scanFor:
				[:instr | instr = byteCode ifTrue: [nRefs := nRefs + 1].
				nRefs > 1]]
		ifFalse:
			[extension := 64 + offset.
			scanner := InstructionStream on: method.
			scanner scanFor:
				[:instr | (instr = 128 and: [scanner followingByte = extension])
							ifTrue: [nRefs := nRefs + 1].
				nRefs > 1]].
	^ nRefs = 1
