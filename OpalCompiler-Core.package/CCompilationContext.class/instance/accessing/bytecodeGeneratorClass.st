bytecodeGeneratorClass
	^ bytecodeGeneratorClass ifNil: [ bytecodeGeneratorClass := IRSqueakV3PlusClosuresBytecodeGenerator ]