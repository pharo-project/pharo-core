apiFreeEnvironmentStrings: extData
	"Win32Utils apiFreeEnvironmentStrings"

	<apicall:  long 'FreeEnvironmentStrings' (void*) module: 'kernel32.dll'>
	^self externalCallFailed