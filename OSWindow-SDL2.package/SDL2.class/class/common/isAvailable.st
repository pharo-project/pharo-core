isAvailable
	^ [ (NativeBoost loadSymbol: 'SDL_Init' fromModule: SDL2 moduleName) isNotNil ] ifError: [ false ]