byteAlignment
	NativeBoost platformId = NativeBoostConstants win32PlatformId ifTrue: [  ^ 8 ].
	^ super byteAlignment