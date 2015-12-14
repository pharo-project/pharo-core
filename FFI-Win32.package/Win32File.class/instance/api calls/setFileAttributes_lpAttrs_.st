setFileAttributes: fileString lpAttrs: aLong
	<apicall: ulong 'SetFileAttributesA' (char* ulong)  module: 'Kernel32.dll'>
	^ self externalCallFailed