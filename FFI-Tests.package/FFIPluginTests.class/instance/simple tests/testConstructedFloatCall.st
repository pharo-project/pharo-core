testConstructedFloatCall
	"Test using generic FFI spec"
	| result meth |
	meth := ExternalLibraryFunction
		name:'ffiTestFloats' module: FFITestLibrary moduleName 
		callType: 0 returnType: ExternalType float
		argumentTypes: ((1 to: 2) collect:[:i| ExternalType float]).
	result := meth invokeWith: $A with: 65.0.
	self assert: result = 130.0