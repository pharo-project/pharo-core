subclass responsibilities
systemConverterClass

	(#('Win32') includes: OSPlatform platformName) 
		ifTrue: [^CP1253TextConverter ].
	^ ISO88597TextConverter.
