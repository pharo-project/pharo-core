testConstructedCharCall
	"Test using generic FFI spec"
	| result meth |
	meth := ExternalLibraryFunction
		name:'ffiTestChars' module: FFITestLibrary moduleName 
		callType: 0 returnType: ExternalType char
		argumentTypes: ((1 to: 4) collect:[:i| ExternalType char]).
	result := meth invokeWith: $A with: 65 with: 65.0 with: true.
	self assert: result isCharacter.
	self assert: result asciiValue = 130.