system: aString
	"Note that the command will foreground-block the VM unless it ends with &"
	<apicall: long 'system' (char*) module: 'libSystem.dylib'>
	self externalCallFailed.