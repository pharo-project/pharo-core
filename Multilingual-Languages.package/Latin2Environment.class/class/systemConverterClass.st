subclass responsibilities
systemConverterClass

	(#('Win32') includes: OSPlatform platformName) 
		ifTrue: [^CP1250TextConverter ].

	^ ISO88592TextConverter.
