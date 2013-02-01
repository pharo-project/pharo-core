code generation
generatedCode

	^ AJGeneratedCode new
		fromInstructions: self prepareInstructions.
