emitOpCode: opCode
	| byte |
	"instruction prefix"
	(byte := (opCode bitAnd: 16rFF000000)) = 0 ifFalse: [
		self emitByte: byte >> 24 ].
	(byte := (opCode bitAnd: 16r00FF0000)) = 0 ifFalse: [
		self emitByte: byte >> 16 ].
	(byte := (opCode bitAnd: 16r0000FF00)) = 0 ifFalse: [
		self emitByte: byte >> 8 ].
	self emitByte: (opCode bitAnd: 16rFF).
	