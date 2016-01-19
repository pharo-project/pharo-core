initializeStartUpList
	Smalltalk 
		removeFromStartUpList: self;
		addToStartUpList: self after: OSPlatform.
	
	"Ensure FFI startUp: is in the correct place"
	self flag: #todo. "This should not be necesary after a while... but like that we are sure
	initialization is in the right place"
	Smalltalk removeFromStartUpList: ShortRunArray.
	Smalltalk 
		removeFromStartUpList: ExternalObject;
		addToStartUpList: ExternalObject before: FFIMethodRegistry.
