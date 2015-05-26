generate: aFunctionBodyBlock

	code := AJGeneratedCode fromInstructions: (self generateInstructions: aFunctionBodyBlock).
	
 