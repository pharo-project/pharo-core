accessing
generator: aGenerator

	gen := aGenerator.
	asm := aGenerator asm.
	objectFormat := NBObjectFormat current asm: asm.
	gen parseOptions: self class defaultOptions