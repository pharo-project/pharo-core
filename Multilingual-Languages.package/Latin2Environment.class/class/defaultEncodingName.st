subclass responsibilities
defaultEncodingName
	
	OSPlatform isWin32 ifTrue: [^'cp-1250' copy].
	OSPlatform isUnix ifTrue: [^'iso8859-2' copy].
	^'mac-roman' copy