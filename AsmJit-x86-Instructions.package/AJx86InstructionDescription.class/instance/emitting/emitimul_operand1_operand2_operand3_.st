emitimul: emitter operand1: op1 operand2: op2 operand3: op3
	| immSize |
	
	op1 isRegMem ifFalse: [  ^ self invalidInstruction ].
	
	" 1 operand "
	(op2 isNil and: [ op3 isNil ]) ifTrue: [
		^ emitter emitX86RM:  16rF6 + (op1 size ~= 1) asBit
			size: op1 size
			regOrCode:  5
			rm:  op1
		].
	op1 isReg ifFalse: [  ^ self invalidInstruction ].
	
	"2 operands"
	op3 isNil ifTrue: [
"		self assert: op1 isRegTypeGPW."

		op2 isRegMem ifTrue: [
			^ emitter emitX86RM: 16r0FAF
				size: op1 size
				regOrCode: op1 code
				rm:  op2
			].
		op2 isImm ifFalse: [ ^ self invalidInstruction ].

		(op2 isInt8 and: [ op2 relocMode == #RelocNone ]) ifTrue: [
			emitter emitX86RM: 16r6B
				size: op1 size
				regOrCode:  op1 code
				rm:  op1
				immSize: 1.
			^ emitter emitImmediate: op2 size: 1.
			].

		immSize := op1 isRegTypeGPW ifTrue: [ 2 ] ifFalse: [ 4 ].
		emitter emitX86RM: 16r69
			size: op1 size
			regOrCode:  op1 code
			rm:  op1
			immSize: immSize.
		^ emitter emitImmediate: op2 size: immSize.
	].

	" 3 operands "
	(op2 isRegMem and: [op3 isImm ]) ifFalse: [ ^ self invalidInstruction ].
	
	(op3 isInt8 and: [ op3 relocMode == #RelocNone ]) ifTrue: [
		emitter emitX86RM: 16r6B
			size: op1 size
			regOrCode:  op1
			rm: op2 immSize: 1.
		^ emitter emitImmediate: op3 size: 1.
		].

    	immSize := op1 isRegTypeGPW ifTrue: [2] ifFalse: [4].
	emitter emitX86RM: 16r69
		size: op1 size
		regOrCode:  op1
		rm:  op2 immSize: immSize.
	emitter emitImmediate: op3 size: immSize.
