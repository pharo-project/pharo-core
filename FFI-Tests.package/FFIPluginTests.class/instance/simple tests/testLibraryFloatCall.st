testLibraryFloatCall
	"Test using call from ExternalLibrary"
	| result |
	result := FFITestLibrary new ffiTestFloats: $A with: 65.0.
	self assert: result = 130.0