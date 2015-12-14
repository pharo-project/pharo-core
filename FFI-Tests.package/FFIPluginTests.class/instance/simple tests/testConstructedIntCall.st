testConstructedIntCall
	"Test using generic FFI spec"
	| result meth |
	meth := ExternalLibraryFunction
		name:'ffiTestInts' module: FFITestLibrary moduleName
		callType: 0 returnType: ExternalType long
		argumentTypes: ((1 to: 4) collect:[:i| ExternalType long]).
	result := meth invokeWith: $A with: 65 with: 65.0 with: true.
	self assert: result = 130.