testConstructedShortCall
	"Test using generic FFI spec"
	| result meth |
	meth := ExternalLibraryFunction
		name:'ffiTestShorts' module: FFITestLibrary moduleName 
		callType: 0 returnType: ExternalType short
		argumentTypes: ((1 to: 4) collect:[:i| ExternalType short]).
	result := meth invokeWithArguments: (Array with: $A with: 65 with: 65.0 with: true).
	self assert: result = 130.