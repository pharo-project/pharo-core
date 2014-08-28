emitsmnemonic: emitter operand1: dst operand2: op2 operand3: op3
	"Emit a string operation mnemonic. See self class >> # initStringOperations for details"
	| fauxReg|
	dst isRegMem ifFalse: [ ^ self invalidInstruction ].
	"quick test for illegal  ins/outs with 64bit-sized arg"
	(dst is64 and: [((opCode1 bitShift: -3) bitXor: 16rD) = 0 ]) ifTrue: [ ^ self invalidInstruction  ].
	"Really, movs and friends are to be called with two parameters, both of the correct size (but inconsequential location).
	We don't really care, so just check sizes are the same if a second operand happens to be there.
	It's only 'provided to allow documentation' anyways, so leave it up to user to mess that up as he sees fit"
	(op2 notNil and: [ dst size ~= op2 size]) ifTrue:[^self invalidInstruction].
	
	"Create a faux register that will have operand size prefix and REX byte set appropriately, and a code of 1 if op size > 1 byte"
	fauxReg := AJRegister new.
	fauxReg code: ((dst size >> 1 << 4) bitOr: ((dst size bitAnd: 1) bitXor:1)).
	self halt.
	^ emitter emitX86Inl: opCode1	reg: fauxReg
