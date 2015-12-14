ffiTestMixedDoublesIntAndStruct: f1 d: f2 d: f3 d: f4 d: f5 d: f6 d: f7 d: f8 d: f9 i: i1 s: s1
	"FFITestLibrary ffiTestMixedDoublesIntAndStruct: 1.0 d: 2.0 d: 3.0 d: 4.0 d: 5.0 d: 6.0 d: 7.0 d: 8.0 d: 9.0 i: 42
		s: (FFITestPoint4 new x: 3; y: 4; z: 5; w:6)"
	<cdecl: double 'ffiTestMixedDoublesIntAndStruct' (double double double double double double double double double long FFITestPoint4) module:'SqueakFFIPrims'>
	^self externalCallFailed