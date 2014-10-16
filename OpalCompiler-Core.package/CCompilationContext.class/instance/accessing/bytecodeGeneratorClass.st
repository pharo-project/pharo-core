bytecodeGeneratorClass
	^ bytecodeGeneratorClass ifNil: [ bytecodeGeneratorClass := BytecodeBackend ]