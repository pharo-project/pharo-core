subclass responsibilities
defaultEncodingName
	
	OSPlatform isWin32CE ifTrue: [^'utf-8' copy].
	OSPlatform isWin32 ifTrue: [^'cp-1250' copy].
	OSPlatform isUnix ifTrue: [^'iso8859-2' copy].
	^'mac-roman' copy