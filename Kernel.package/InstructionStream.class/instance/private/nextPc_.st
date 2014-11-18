nextPc: currentByte
	"Answer the pc of the next bytecode following the current one, given the current bytecode.."

	| type |
	type := currentByte // 16.
	"extensions"
	^ type = 8
		ifTrue: [pc + (#(2 2 2 2 3 2 2 1 1 1 2 3 3 3 3 4) at: currentByte \\ 16 + 1)]
		ifFalse: [
			"long jumps"
			type = 10
				ifTrue: [pc + 2]
				ifFalse: [pc + 1]]