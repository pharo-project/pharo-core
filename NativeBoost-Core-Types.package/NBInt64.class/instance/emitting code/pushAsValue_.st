pushAsValue: gen
	| asm |
	asm := gen asm.

	gen proxy signed64BitValueOf: (loader emitLoad: gen).

	asm 
		push: asm EDX;
		push: asm EAX.

	gen optCheckFailOnEveryArgument ifTrue: [
		gen proxy ifFailedEmit: [  gen failWithMessage: 'Argument coercion failed: signed 64-bit integer value expected' ].
	].