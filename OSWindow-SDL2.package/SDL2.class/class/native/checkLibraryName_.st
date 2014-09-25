checkLibraryName: aName
	^ (NativeBoost loadSymbol: 'SDL_Init' fromModule: aName) notNil