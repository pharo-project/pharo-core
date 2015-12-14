ffiTestFloats: f1 with: f2
	"FFITestLibrary new ffiTestFloats: $A with: 65.0"
	<cdecl: float 'ffiTestFloats' (float float)>
	^self externalCallFailed