public access
decompile: aSelector in: aClass method: aMethod
	"Answer a MethodNode that is the root of the parse tree for the 
	argument, aMethod, which is the CompiledMethod associated with the 
	message, aSelector. Variables are determined with respect to the 
	argument, aClass."

	^self
		decompile: aSelector
		in: aClass
		method: aMethod
		using: (self constructorForMethod: aMethod)