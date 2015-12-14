getenv: aString
	<apicall: char* 'getenv' (char*) module: 'libSystem.dylib'>
	self externalCallFailed