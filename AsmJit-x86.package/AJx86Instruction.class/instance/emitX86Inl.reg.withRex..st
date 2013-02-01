code generation
emitX86Inl: opCode reg: reg withRex: useREX
	"Emit instruction where register is inlined to opcode."

	| byte |
	"16 bit prefix"
	reg size == 2 
		ifTrue: [ self emitByte: 16r66 ].
	
	"instruction prefix"
	(byte := (opCode bitAnd: 16rFF000000)) = 0 ifFalse: [
		self emitByte: byte >> 24 ].
	
	useREX ifTrue: [ self emitRexForSingleOperand: reg ].
	
	(byte := (opCode bitAnd: 16r00FF0000)) = 0 ifFalse: [
		self emitByte: byte >> 16 ].

	(byte := (opCode bitAnd: 16r0000FF00)) = 0 ifFalse: [
		self emitByte: byte >> 8 ].

	self emitByte: (opCode bitAnd: 16rFF) + (reg code bitAnd: 7).
