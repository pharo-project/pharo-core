initialize 
	super initialize.
	lastActivePlatform := OSPlatform current.
	compiledMethods := WeakSet new.
	