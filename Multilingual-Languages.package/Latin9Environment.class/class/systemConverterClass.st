subclass responsibilities
systemConverterClass

	(#('Win32') includes: OSPlatform platformName) 
		ifTrue: [^CP1252TextConverter ].

	^ ISO885915TextConverter.
