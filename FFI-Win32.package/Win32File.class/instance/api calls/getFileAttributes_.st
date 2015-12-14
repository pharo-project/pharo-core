getFileAttributes: fileString
	<apicall: ulong 'GetFileAttributesA' (char*)  module: 'Kernel32.dll'>
	^ self externalCallFailed