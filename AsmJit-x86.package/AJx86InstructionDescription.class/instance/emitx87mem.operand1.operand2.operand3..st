emitting
emitx87mem: emitter operand1: m operand2: op2 operand3: op3
	| opCode mod |
      m isMem ifFalse: [ ^ self invalidInstruction ].

	opCode := mod := 0.

	(m is16 and: [ (o1Flags bitAnd: OFM2) ~= 0 ]) ifTrue: [
		opCode := (opCode1 bitAnd: 16rFF000000) >> 24.
		mod := opCodeR ].

	(m is32 and: [ (o1Flags bitAnd: OFM4) ~= 0 ]) ifTrue: [
		opCode := (opCode1 bitAnd: 16r00FF0000) >> 16.
		mod := opCodeR ].
	
	(m is64 and: [ (o1Flags bitAnd: OFM8) ~= 0 ]) ifTrue: [
		opCode := (opCode1 bitAnd: 16r0000FF00) >> 8.
		mod :=  (opCode1 bitAnd: 16r000000FF) ].

	opCode = 0 ifTrue: [ self invalidInstruction ].

	emitter emitSegmentPrefix: m;
		emitByte: opCode.
	m emitModRM: emitter code: mod immSize: 0.
