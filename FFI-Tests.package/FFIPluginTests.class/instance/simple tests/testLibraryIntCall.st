testLibraryIntCall
	"Test using call from ExternalLibrary"
	| result |
	result := FFITestLibrary new ffiTestInt: $A with: 65 with: 65.0 with: true.
	self assert: result = 130.