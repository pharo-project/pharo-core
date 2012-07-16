public query
defaultEncodingName

	OSPlatform isWin32 ifTrue: [^'shift-jis' copy].
	OSPlatform isMacOSX ifTrue: [^'utf-8' copy].
	OSPlatform isUnix ifTrue: [ ^'euc-jp' copy].
	^  'mac-roman' copy