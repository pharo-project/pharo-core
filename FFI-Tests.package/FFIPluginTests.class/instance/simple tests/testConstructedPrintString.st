testConstructedPrintString
	"Test using generic FFI spec"
	| result meth |
	meth := ExternalLibraryFunction
		name:'ffiPrintString' module: FFITestLibrary moduleName 
		callType: 0 returnType: ExternalType string
		argumentTypes: ((1 to: 1) collect:[:i| ExternalType string]).
	result := meth invokeWith:'Hello World!'.
	self assert: result = 'Hello World!'.