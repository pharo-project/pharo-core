jump: distance if: condition

	"jumps to fall through, no-op"
	distance = 0 ifTrue: [
		^ self nextPut: (Bytecodes at: #popStackBytecode)].
	
	"short jump"
	distance <= 8 ifTrue: [
		^ condition 
			ifTrue: [ self nextPut: ((Bytecodes at: #shortJumpIfTrue) at: distance) ]
			ifFalse: [ self nextPut: ((Bytecodes at: #shortJumpIfFalse) at: distance) ] ].
	
	"long jump"
	self pushExtB: distance // 256.
	condition 
		ifTrue: [ self nextPut: (Bytecodes at: #extendedJumpIfTrue) ]
		ifFalse: [ self nextPut: (Bytecodes at: #extendedJumpIfFalse) ].
	self nextPut: distance \\ 256.