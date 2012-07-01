as yet unclassified
systemConverterClass
	| platformName osVersion encoding |
	platformName := OSPlatform platformName.
	osVersion := OSPlatform osVersion.
	(platformName = 'Win32' and: [osVersion = 'CE']) 
		ifTrue: [^UTF8TextConverter].
	(#('Win32' 'ZaurusOS') includes: platformName) 
		ifTrue: [^EUCKRTextConverter].
	platformName = 'Mac OS' 
		ifTrue: 
			[^('10*' match: OSPlatform osVersion) 
				ifTrue: [UTF8TextConverter]
				ifFalse: [EUCKRTextConverter]].
	platformName = 'unix' 
		ifTrue: 
			[encoding := X11Encoding encoding.
			encoding ifNil: [^EUCKRTextConverter].
			(encoding = 'utf-8') 
				ifTrue: [^UTF8TextConverter].							
			^EUCKRTextConverter].
	^MacRomanTextConverter