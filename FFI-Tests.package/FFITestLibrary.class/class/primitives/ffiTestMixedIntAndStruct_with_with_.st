ffiTestMixedIntAndStruct: i with: pt1 with: pt2
	"FFITestLibrary ffiTestMixedIntAndStruct: 2 with: (FFITestPoint2 new x: 3; y: 4) with: (FFITestPoint2 new x: 5; y: 6)"
	<cdecl: long 'ffiTestMixedIntAndStruct' (long FFITestPoint2 FFITestPoint2) module:'SqueakFFIPrims'>
	^self externalCallFailed