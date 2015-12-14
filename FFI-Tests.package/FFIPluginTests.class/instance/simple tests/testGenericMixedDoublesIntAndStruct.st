testGenericMixedDoublesIntAndStruct
	"Test using generic FFI spec"
	| result i struct |
	i := 42.
	struct := FFITestPoint4 new.
	struct x: 1. struct y: 2. struct z: 3. struct w: 4.
	result := FFITestLibrary ffiTestMixedDoublesIntAndStruct: 1.0 d: 2.0 d: 3.0 d: 4.0 d: 5.0 d: 6.0 d: 7.0 d: 8.0 d: 9.0 i: 42 s: struct.
	self assert: (result closeTo: 45.0 + 42 + 10) 