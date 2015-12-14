ffiTestMixedIntAndStruct3: i with: anFFISmallStruct1
	"FFITestLibrary ffiTestMixedIntAndStruct3: 2 with: (FFISmallStruct1 new x: 3; y: 4)"
	<cdecl: long 'ffiTestMixedIntAndStruct3' (long FFISmallStruct1) module:'SqueakFFIPrims'>
	^self externalCallFailed