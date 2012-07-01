subclass responsibilities
systemConverterClass
	| platformName osVersion encoding |
	platformName := OSPlatform platformName.
	osVersion := OSPlatform osVersion.
	OSPlatform isWin32CE
		ifTrue: [^UTF8TextConverter].
	(#('Win32' 'ZaurusOS') includes: platformName) 
		ifTrue: [^ShiftJISTextConverter].
	OSPlatform isMacOS
		ifTrue: 
			[^('10*' match: osVersion) 
				ifTrue: [UTF8TextConverter]
				ifFalse: [ShiftJISTextConverter]].
	OSPlatform isUnix
		ifTrue: 
			[encoding := X11Encoding encoding.
			encoding ifNil: [^EUCJPTextConverter].
			(encoding = 'utf-8') 
				ifTrue: [^UTF8TextConverter].				
			(encoding = 'shiftjis' or: [ encoding = 'sjis' ]) 
				ifTrue: [^ShiftJISTextConverter].				
			^EUCJPTextConverter].
	^MacRomanTextConverter