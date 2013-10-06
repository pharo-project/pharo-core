emitalu: emitter operand1: op1 operand2: op2 operand3: op3
	| opCode opReg |
	opCode := opCode1.
	opReg := opCodeR.
	
	" Mem <- Reg "
	(op1 isMem and: [ op2 isReg ]) ifTrue: [
		^ emitter emitX86RM: opCode + op2 isRegTypeGPB not asBit
			size: op2 size
			regOrCode: op2
			rm: op1
	].

	"Reg <- Reg|Mem"
	(op1 isReg and: [op2 isRegMem]) ifTrue: [
		^ emitter emitX86RM: opCode + 2 + op1 isRegTypeGPB not asBit
			size: op1 size
			regOrCode: op1
			rm: op2
	].

	op2 isImm ifFalse: [	self invalidInstruction ].

	"short constant"
	op2 isInt8 ifTrue: [
 		| szBits |
		szBits := op1 size = 1 ifTrue: [ 0 ] ifFalse: [ 3 ].
		emitter emitX86RM: opCode2 + szBits
			size: op1 size
			regOrCode: opReg
			rm: op1
			immSize: 1.
		^ emitter emitImmediate: op2 size: 1.
	].
	
      " AL, AX, EAX, RAX register shortcuts"
	(op1 isRegIndex: 0) ifTrue: [
		
		op1 isRegTypeGPW ifTrue: [ emitter emitByte: 16r66 " 16 bit " ].
		op1 isRegTypeGPQ ifTrue: [ emitter emitByte: 16r48 " REX.W" ].

		emitter emitByte: (opReg << 3 bitOr: (16r04 + op1 isRegTypeGPB not asBit)).
		^ emitter emitImmediate: op2 size: (op1 size min: 4)
	].

	(op1 isRegMem) ifTrue: [ | immSize szBits |
		immSize := op2 isInt8 ifTrue: [1] ifFalse: [ op1 size min: 4].
		szBits := op1 size ~= 1 ifTrue: [ immSize ~= 1 ifTrue: [1] ifFalse: [3]] ifFalse: [ 0].
		emitter emitX86RM: opCode2 + szBits
			size: op1 size
			regOrCode: opReg
			rm: op1
			immSize: immSize.
		^ emitter emitImmediate: op2 size: immSize.
	].

	self invalidInstruction.
	