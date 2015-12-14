testLoadSymbolFromModule
	| address |
	
	"Ok"
	address := ExternalAddress loadSymbol: 'ffiTestFloats' module: FFITestLibrary moduleName.
	self deny: address isNil.
	self deny: address isNull.
	"Symbol does not exists"
	self 
		should: [ ExternalAddress loadSymbol: 'ffi_does_not_exist' module: FFITestLibrary moduleName ]
		raise: Error.
	"Module does not exists"
	self 
		should: [ ExternalAddress loadSymbol: 'ffiTestFloats' module: 'NonExistingModule' ]
		raise: Error.		