apiGetEnvironmentStrings
	"Win32Utils apiGetEnvironmentStrings"

	<apicall:  byte* 'GetEnvironmentStrings' () module: 'kernel32.dll'>
	^self externalCallFailed