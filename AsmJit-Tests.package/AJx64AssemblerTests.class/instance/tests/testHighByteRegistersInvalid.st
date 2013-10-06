testHighByteRegistersInvalid
	"Can't access AH, BH, CH, DH if a REX byte is required.
	This test attempts to test every instruction supported by AsmJit that can access an 8-bit general-purpose register AND also require a REX prefix."

	| legacyHRegs op2codes opBothCodes mixedWidthOpCodes byteOperandsRequiringRex wideRegistersRequiringRex |
	legacyHRegs := {AH.
	CH.
	DH.
	BH}.
	opBothCodes := #(#adc:with: #add:with: #mov:to: #cmp:with: #or:with: #sbb:with: #sub:with #xchg:with: #xor:with:).
	op2codes := #(#cmpxchg:with: #test:with: #xadd:with:).
	mixedWidthOpCodes := #(#crc32:with: #movsx:to: #movzx:to:).
	wideRegistersRequiringRex := {RAX.
	R8D}.	"RAX requires REX.W, R8D requires REX.R or REX.B"
	byteOperandsRequiringRex := {SPL.
	BPL.
	SIL.
	DIL.
	R8B.
	(R8 ptr).
	(R8 ptr + 16r12).
	(R8 ptr + 16r1234).
	((RAX ptr + R8) * 2).
	((RAX ptr + R8) * 4 + 16r12).
	((RAX ptr + R8) * 8 + 16r1234)}.
	legacyHRegs
		do: [ :hreg | 
			byteOperandsRequiringRex
				do: [ :operand | 
					opBothCodes
						do: [ :opcode | 
							self asmShould: [ :a | a perform: opcode with: hreg with: operand ] raise: Error.
							self asmShould: [ :a | a perform: opcode with: operand with: hreg ] raise: Error ].
					op2codes do: [ :opcode | self asmShould: [ :a | a perform: opcode with: operand with: hreg ] raise: Error ] ].
			mixedWidthOpCodes
				do: [ :opcode | 
					wideRegistersRequiringRex
						do: [ :wideReg | self asmShould: [ :a | a perform: opcode with: wideReg with: hreg ] raise: Error ] ] ]