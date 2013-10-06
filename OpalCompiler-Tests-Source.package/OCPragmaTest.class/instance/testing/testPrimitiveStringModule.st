testPrimitiveStringModule
	| aRBMethode |

	aRBMethode := OpalCompiler new parse: self methodPrimitiveStringModule in: self class notifying: [nil].
	
	self assert: (aRBMethode compiledMethod primitive = 117)