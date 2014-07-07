bytecodeBackend
	^ BytecodeBackend ifNil: [ self initialize ]