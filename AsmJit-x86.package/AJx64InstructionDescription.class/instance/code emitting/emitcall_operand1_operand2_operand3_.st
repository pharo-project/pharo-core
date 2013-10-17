emitcall: emitter operand1: op1 operand2: op2 operand3: op3

	(op1 isReg and: [ op1 is64 and: [ op1 isUpperBank not ]]) ifTrue: [ 
		"shortcut"
		emitter emitByte: 16rFF. 
		op1 emitModRM: emitter code: 2 immSize: 4.
		^ self].
	
	(op1 isMem and: [op1 hasBase and: [ op1 base is64 and: [ op1 base isUpperBank not ]]]) ifTrue: [ 
		"shortcut"
		emitter emitByte: 16rFF. 
		op1 emitModRM: emitter code: 2 immSize: 4.
		^ self].
	
	(op1 isMem or: [ op1 isReg and: [ op1 is64 ] ]) ifTrue: [
		^ emitter emitX86RM:  16rFF
			size: 4
			regOrCode: 2  
			rm: op1  
	].

	op1 isImm ifTrue: [ "call by relative offset, you should be really sure what you're' doing"
		emitter emitByte: 16rE8. 
		op1 emitUsing: emitter size: 4.
		^ self.
		].
	
	op1 isLabel ifTrue: [
		emitter emitByte: 16rE8. 
		emitter emitDisplacement: op1 inlinedDisp: -4.
		^ self
	].
	self invalidInstruction.
