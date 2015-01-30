initialize
	gen := self compilationContext bytecodeGeneratorClass newWithEncoderClass: self compilationContext encoderClass.
	trailer := CompiledMethodTrailer empty.
	currentScope := Stack new.
	tempVectorStack := Stack new.
