emitsddisambiguate: emitter operand1: op1 operand2: op2 operand3: op3
	"XXXsd can be two different operations based on which operands are used;
	- 0 arg version is a string operation on doubleword (32bit) values
	- 2arg version is an SSE2/AVX mmu operation.
	Since mmu operations have differing emit methods, rely on the string versions being the one installed in instruction dictionary, 	"

	| correctDescription |
	op1
		ifNil: [ 
			"String op was correct"
			^ self
				emitemit: emitter
				operand1: op1
				operand2: op2
				operand3: op3 ].	"Emit other instruction instead"
	correctDescription := self class fromArray: (self class instructionsAmbiguous detect: [ :one | one first = name ]).
	emitter description: correctDescription.
	correctDescription
		emitUsing: emitter
		operand1: op1
		operand2: op2
		operand3: op3