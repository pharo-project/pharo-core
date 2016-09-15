bytecodeBackend
	^ BytecodeBackend ifNil: [ self initialize. BytecodeBackend ]