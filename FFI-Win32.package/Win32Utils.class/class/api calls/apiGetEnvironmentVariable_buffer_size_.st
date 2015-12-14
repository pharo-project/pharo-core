apiGetEnvironmentVariable:  name buffer: buffer size: bufferSize
	"DWORD WINAPI GetEnvironmentVariable(
		__in_opt   LPCTSTR lpName,
		__out_opt  LPTSTR lpBuffer,
		__in       DWORD nSize
	);"
	"http://msdn.microsoft.com/en-us/library/ms683188(VS.85).aspx"

	<apicall:  ulong 'GetEnvironmentVariableA' ( char* byte*  ulong) module: 'kernel32.dll'>
	^self externalCallFailed