testConstructedDoubleCall
	"Test using generic FFI spec"
	| result meth |
	meth := ExternalLibraryFunction
		name:'ffiTestDoubles' module: FFITestLibrary moduleName 
		callType: 0 returnType: ExternalType double
		argumentTypes: ((1 to: 2) collect:[:i| ExternalType double]).
	result := meth invokeWithArguments: (Array with: 41 with: true).
	self assert: result = 42.0