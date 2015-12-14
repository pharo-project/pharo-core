testGenericMixedFloatsAndDouble
	"Test using generic FFI spec"
	| result |
	result := FFITestLibrary ffiTestMixedFloatsAndDouble: 1.2 with: 3.4 with: 5.6 with: 7.8.
	self assert: (result closeTo: 1.2 + 3.4 + 5.6 + 7.8) 