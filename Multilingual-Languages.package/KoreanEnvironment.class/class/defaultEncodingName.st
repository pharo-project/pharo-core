as yet unclassified
defaultEncodingName
	
	OSPlatform isWin32  ifTrue: [ ^'euc-kr' copy].
	OSPlatform isMacOSX ifTrue: [ ^'utf-8' copy].
	OSPlatform isUnix ifTrue: [^'euc-kr' copy].
	^'mac-roman' copy