loadCairoLibrary 
	^ NativeBoost forCurrentPlatform loadModule: self getLibraryPath
