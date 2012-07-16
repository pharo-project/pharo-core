subclass responsibilities
defaultEncodingName

	OSPlatform isWin32 ifTrue: [^'cp-1252' copy].
	OSPlatform isUnix ifTrue: [^'iso8859-15' copy].
	^'mac-roman'