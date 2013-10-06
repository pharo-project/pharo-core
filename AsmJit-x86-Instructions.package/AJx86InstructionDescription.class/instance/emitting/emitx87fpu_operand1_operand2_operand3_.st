emitx87fpu: emitter operand1: op1 operand2: op2 operand3: op3 
	"Either we are in memory, and carry out by using D8 / DC followed by modRM where reg indicates the operation"
	op1 isMem 
		ifTrue: [
		(op2 notNil or: [op3]) notNil ifTrue: [self error: 'Invalid arguments!'].
		
		emitter emitByte: (opCode1 >> (32 - (op1 size* 2)) bitAnd: 16rFF).
		^op1 emitModRM: emitter code: opCodeR immSize: nil].
	"Or both my arguments are X87 registers, one of which is ST0.
	Store in op1 register."
	(op1 isRegTypeX87 and: [op2 isRegTypeX87]) ifTrue: [|shift offset|
		op1 index = 0 
			ifTrue: [shift := 24.
					offset := op2 index]
			ifFalse: [
			op2 index = 0 
				ifTrue: [shift = 16.
					offset := op1 index]
				ifFalse: [self error: 'ST0 must be one of arguments']].

		"D8 if Storing in ST0, DC if storing in other"
		emitter emitByte: (opCode1 >> shift bitAnd: 16rFF).
	
		emitter emitByte: (opCode1 >> (shift - 16) bitAnd: 16rFF) + offset
		]
		ifFalse: [self error: 'Invalid arguments!']
	