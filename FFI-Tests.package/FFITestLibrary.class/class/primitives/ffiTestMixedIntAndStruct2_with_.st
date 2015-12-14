ffiTestMixedIntAndStruct2: i with: pt4
	"FFITestLibrary ffiTestMixedIntAndStruct2: 2 with: (FFITestPoint4 new x: 3; y: 4; z: 5; w:6)"
	<cdecl: long 'ffiTestMixedIntAndStruct2' (long FFITestPoint4) module:'SqueakFFIPrims'>
	^self externalCallFailed