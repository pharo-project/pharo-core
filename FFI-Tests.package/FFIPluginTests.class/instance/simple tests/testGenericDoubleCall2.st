testGenericDoubleCall2
	"Test using generic FFI spec"
	| result |
	result := FFITestLibrary ffiTestDoubles9: 1.0 d: 2.0 d: 3.0 d: 4.0 d: 5.0 d: 6.0 d: 7.0 d: 8.0 d: 9.0.
	self assert: result = 45.0