createFFICalloutLiteralFromSpec: functionSpec
	| externalFunction |
	
	externalFunction := ExternalLibraryFunction
		name: functionSpec functionName
		module: self moduleName
		callType: self callType
		returnType: functionSpec returnType externalTypeWithArity
		argumentTypes: (functionSpec arguments collect: #externalTypeWithArity).
	
	self isIndirectCall 
		ifTrue: [ self makeIndirectCall: externalFunction ].	
		
	^ externalFunction