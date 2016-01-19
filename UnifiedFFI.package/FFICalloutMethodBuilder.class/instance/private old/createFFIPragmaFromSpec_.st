createFFIPragmaFromSpec: functionSpec
	^ RBFFICallPragma
		externalName: functionSpec functionName
		module: self moduleOrHandle
		callType: self callType
		returnType: functionSpec returnType externalTypeWithArity
		argumentTypes: (functionSpec arguments collect: #externalTypeWithArity)