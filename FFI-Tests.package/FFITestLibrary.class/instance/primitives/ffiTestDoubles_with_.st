ffiTestDoubles: f1 with: f2
	"FFITestLibrary new ffiTestDoubles: $A with: 65.0"
	<cdecl: double 'ffiTestDoubles' (double double)>
	^self externalCallFailed