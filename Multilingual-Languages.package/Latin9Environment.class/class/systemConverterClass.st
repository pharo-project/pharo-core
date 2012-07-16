subclass responsibilities
systemConverterClass

	OSPlatform isWin32 
		ifTrue: [^CP1252TextConverter ].

	^ ISO885915TextConverter.
