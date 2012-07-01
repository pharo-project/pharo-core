subclass responsibilities
defaultEncodingName
	| platformName osVersion |
	platformName := OSPlatform platformName.
	osVersion := OSPlatform osVersion.
	OSPlatform isWin32CE ifTrue: [^'utf-8' copy].
	(#('Win32') includes: platformName) 
		ifTrue: [^'cp-1252' copy].
	(#('unix') includes: platformName) ifTrue: [^'iso8859-15' copy].
	^'mac-roman'