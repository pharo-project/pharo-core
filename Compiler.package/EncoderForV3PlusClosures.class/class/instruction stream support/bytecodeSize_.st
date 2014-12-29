bytecodeSize: bytecode
	| type |
	type := bytecode // 16.
	"extensions"
	^ type = 8
		ifTrue: [#(2 2 2 2 3 2 2 1 1 1 2 3 3 3 3 4) at: bytecode \\ 16 + 1]
		ifFalse: [
			"long jumps"
			type = 10
				ifTrue: [2]
				ifFalse: [1]]