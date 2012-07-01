as yet unclassified
defaultEncodingName
	
	OSPlatform isWin32CE ifTrue: [ ^'utf-8' copy].
	OSPlatform isWin32  ifTrue: [ ^'euc-kr' copy].
	OSPlatform isMacOSX ifTrue: [ ^'utf-8' copy].
	OSPlatform isMacOS9 ifTrue: [ ^'euc-kr' copy].
	OSPlatform isUnix ifTrue: [^'euc-kr' copy].
	^'mac-roman' copy