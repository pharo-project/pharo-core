public query
defaultEncodingName
	
	OSPlatform isWin32CE ifTrue: [ ^'utf-8' copy].
	OSPlatform isWin32  ifTrue: [ ^'gb2312' copy].
	OSPlatform isMacOS ifTrue: [ ^'gb2312' copy].
	OSPlatform isUnix ifTrue: [^'euc-cn' copy].
	^'mac-roman' copy