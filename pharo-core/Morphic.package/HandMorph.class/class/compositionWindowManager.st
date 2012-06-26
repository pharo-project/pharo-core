accessing
compositionWindowManager
	CompositionWindowManager ifNotNil: [^CompositionWindowManager].
	OSPlatform isWin32 
		ifTrue: [^CompositionWindowManager := ImmWin32 new].
	OSPlatform isX11
		ifTrue: [^CompositionWindowManager := ImmX11 new].
	^CompositionWindowManager := ImmAbstractPlatform new