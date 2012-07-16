subclass responsibilities
defaultEncodingName
	
	OSPlatform isWin32  ifTrue: [ ^'iso8859-1' copy].
	OSPlatform isMacOS ifTrue: [ ^'iso8859-1' copy].
	OSPlatform isUnix ifTrue: [^'iso8859-1' copy].
	^'mac-roman' copy