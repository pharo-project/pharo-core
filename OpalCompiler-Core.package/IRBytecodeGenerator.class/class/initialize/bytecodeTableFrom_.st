bytecodeTableFrom: specArray
	"SpecArray is an array of either
	(index selector) or
	(index1 index2 selector)."

	| contiguous |
	Bytecodes := IdentityDictionary new: 256.
	BytecodeTable := Array new: 256.
	contiguous := 0.
	specArray do: [ :spec |
		(spec first) = contiguous ifFalse: [self error: 'Non-contiguous table entry'].
		spec size = 2 ifTrue: [
			Bytecodes at: (spec second) put: (spec first).
			BytecodeTable at: (spec first) + 1 put: (spec second).
			contiguous := contiguous + 1.
		] ifFalse: [
			spec size = 3 ifFalse: [self error: 'bad spec size'].
			Bytecodes at: spec third put: (spec first to: spec second).
			spec first to: spec second do: [ :i |
				BytecodeTable at: i + 1 put: spec third.
			].
			contiguous := contiguous + spec second - spec first + 1.
		].
	].
	^ BytecodeTable