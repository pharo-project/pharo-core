subclass responsibilities
systemConverterClass
	| encoding |

	OSPlatform isWin32 
		ifTrue: [^ShiftJISTextConverter].
	OSPlatform isMacOS
		ifTrue: [^UTF8TextConverter].
	OSPlatform isUnix
		ifTrue: 
			[encoding := X11Encoding encoding.
			encoding ifNil: [^EUCJPTextConverter].
			(encoding = 'utf-8') 
				ifTrue: [^UTF8TextConverter].				
			(encoding = 'shiftjis' or: [ encoding = 'sjis' ]) 
				ifTrue: [^ShiftJISTextConverter].				
			^EUCJPTextConverter].
	^UTF8TextConverter