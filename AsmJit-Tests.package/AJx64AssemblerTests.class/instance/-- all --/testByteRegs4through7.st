testByteRegs4through7
	"Test valid uses of byte registers SPL BPL SIL DIL, only available in 64-bit mode, and when using a REX prefix.
	Can't be used in the same instruction with AH, CH, DH, or BH -- this is tested in testHighByteRegistersInvalid."

	| byteRegs op2codes opBothCodes mixedWidthOpCodes byteRMOperands wideRegisters |
	"byteRegs -- register -> contribution to ModRM byte when used as the reg operand"
	byteRegs := {(SPL -> 16r20).
	(BPL -> 16r28).
	(SIL -> 16r30).
	(DIL -> 16r38)}.	"opBothCodes -- #selector -> #(opcode when byteReg second arg, opcode when byteReg first arg)"
	opBothCodes := {(#adc:with: -> #(16r10 16r12)).
	(#add:with: -> #(16r00 16r02)).
	(#mov:with: -> #(16r88 16r8A)).
	(#cmp:with: -> #(16r38 16r3A)).
	(#or:with: -> #(16r08 16r0A)).
	(#sbb:with: -> #(16r18 16r1A)).
	(#sub:with -> #(16r28 16r2A)).
	(#xor:with: -> #(16r30 16r32))}.	"op2Codes -- #selector -> multiByteBytecode. ByteReg is always the second arg"
	op2codes := {(#cmpxchg:with: -> #[16r0F 16rB0]).
	(#test:with: -> #[16r84]).
	(#xadd:with: -> #[16r0F 16rC0])	"xchg is not actually supported at this time (#xchg:with: -> #[16r86])"}.	"mixedWidthOpCodes -- #selector -> multiByteBytecode. ByteReg is always the second arg"
	mixedWidthOpCodes := {(#movsx:with: -> #[16r0F 16rBE]).
	(#movzx:with: -> #[16r0F 16rB6])}.	"**** Handle #crc32:with: separately due to its legacy prefix ****"	"wideRegisters -- register -> #[REX prefix, contribution to ModRM byte when used as r/m operand]"
	wideRegisters := {(EAX -> #[16r40 16rC0]).
	(RAX -> #[16r48 16rC0]).
	(R8D -> #[16r44 16rC0]).
	(R8 -> #[16r4C 16rC0])}.	"byteRMOperands -- operand -> #(REX prefix, #[modRMContribution, SIB and displacement bytes if any])"
	byteRMOperands := {(SPL -> #(16r40 #[16rC4])).
	(BPL -> #(16r40 #[16rC5])).
	(SIL -> #(16r40 #[16rC6])).
	(DIL -> #(16r40 #[16rC7])).
	(R8B -> #(16r41 #[16rC0])).
	(AL -> #(16r40 #[16rC0])).
	(R8 ptr -> #(16r41 #[16r00])).
	(RAX ptr -> #(16r40 #[16r00])).
	(R8 ptr + 16r12 -> #(16r41 #[16r40 16r12])).
	(RAX ptr + 16r12 -> #(16r40 #[16r40 16r12])).
	(R8 ptr + 16r1234 -> #(16r41 #[16r80 16r34 16r12 16r00 16r00])).
	(RAX ptr + 16r1234 -> #(16r40 #[16r80 16r34 16r12 16r00 16r00])).
	((RAX ptr + R8) * 2 -> #(16r42 #[16r04 16r40])).
	((RAX ptr + RAX) * 2 -> #(16r40 #[16r04 16r40])).
	((RAX ptr + R8) * 4 + 16r12 -> #(16r42 #[16r44 16r80 16r12])).
	((RAX ptr + RAX) * 4 + 16r12 -> #(16r40 #[16r44 16r80 16r12])).
	((RAX ptr + R8) * 8 + 16r1234 -> #(16r42 #[16r84 16rC0 16r34 16r12 16r00 16r00])).
	((RAX ptr + RAX) * 8 + 16r1234 -> #(16r40 #[16r84 16rC0 16r34 16r12 16r00 16r00]))}.
	byteRegs
		do: [ :reg | 
			byteRMOperands
				do: [ :rm | 
					opBothCodes
						do: [ :opcode | 
							| opcodeByte op1 op2 |
							op1 := reg key.
							op2 := rm key.
							opcodeByte := opcode value last.
							self
								assert: [ :a | a perform: opcode key with: op1 with: op2 ]
								bytes:
									(ByteArray with: rm value first with: opcodeByte with: reg value | rm value last first) , rm value last allButFirst	"REX"	"ModRM"	"SIB and displacement"	"Need to add the necessary data to allow testing the reverse order of operands." ].
					op2codes
						do: [ :opcode | 
							self
								assert: [ :a | a perform: opcode key with: rm key with: reg key ]
								bytes:
									((ByteArray with: rm value first) , opcode value copyWith: reg value | rm value last first) , rm value last allButFirst	"REX"	"ModRM"	"SIB and displacement" ] ].
			mixedWidthOpCodes
				do: [ :opcode | 
					wideRegisters
						do: [ :rm | 
							self
								assert: [ :a | a perform: opcode key with: rm key with: reg key ]
								bytes: ((ByteArray with: rm value first) , opcode value copyWith: reg value >> 3 | rm value last)	"REX"	"ModRM"	"SIB and displacement" ] ] ]