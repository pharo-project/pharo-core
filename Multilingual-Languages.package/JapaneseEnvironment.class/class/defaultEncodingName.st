public query
defaultEncodingName

	OSPlatform isWin32CE ifTrue: [^'utf-8' copy].
	OSPlatform isWin32 ifTrue: [^'shift-jis' copy].
	OSPlatform isMacOSX ifTrue: [^'utf-8' copy].
	OSPlatform isMacOS9 ifTrue: [^'shift-jis' copy].
	OSPlatform isUnix ifTrue: [ ^'euc-jp' copy].
	^  'mac-roman' copy