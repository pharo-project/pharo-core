reg32: index

	"answer one of 32bit general-purpose registers, based on index"
	| code |
	
	index < 0 ifTrue: [ self invalidRegisterIndex ].
	(index >= self numGPRegisters) ifTrue: [ self invalidRegisterIndex ].

	code := 16r20 + index.
	^ AJx86Registers code: code