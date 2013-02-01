emitting code
emitCode: asm
	machineCode ifNil: [ machineCode := #[] ]