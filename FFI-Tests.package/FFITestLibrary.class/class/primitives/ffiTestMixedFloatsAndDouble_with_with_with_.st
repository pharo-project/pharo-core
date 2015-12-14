ffiTestMixedFloatsAndDouble: f1 with: d1 with: f2 with: f3
	"FFITestLibrary ffiTestMixedFloatsAndDouble: 1.2 with: 3.4 with: 5.6 with: 7.8"
	<cdecl: double 'ffiTestMixedFloatsAndDouble' (float double float float) module:'SqueakFFIPrims'>
	^self externalCallFailed