emitCodeAtOffset: offset assembler: asm
	
	position := offset.
	[ | labelPos | 
		labelPos := label position.
		labelPos ifNotNil: [ self emitCode: asm ].
		next ifNotNil: [ 
			next emitCodeAtOffset: offset + self machineCodeSize assembler: asm ].
		label position ~= labelPos ] whileTrue.
	
	label position ifNil: [ self errorUndefinedLabel: label  ]