platform specific
defaultEncodingName: languageSymbol 
	| encodings platformName osVersion |
	platformName := OSPlatform platformName.
	osVersion := OSPlatform osVersion.
	encodings := self platformEncodings at: languageSymbol
				ifAbsent: [self platformEncodings at: #default].
	encodings at: platformName ifPresent: [:encoding | ^encoding].
	encodings at: platformName , ' ' , osVersion
		ifPresent: [:encoding | ^encoding].
	^encodings at: #default