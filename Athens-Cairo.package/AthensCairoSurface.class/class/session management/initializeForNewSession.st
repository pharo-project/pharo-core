initializeForNewSession
	| ptr |
	uniqueSession := NativeBoost uniqueSessionObject.
	
	"create a dispatch structure"
	dispatchStruct := dispatch := SQSurfaceDispatch new.
	
	dispatch 
		getSurfaceFormatFn: self createGetSurfaceFormatFn;
		lockSurfaceFn: self createLockSurfaceFn;
		unlockSurfaceFn: self createUnlockSurfaceFn;
		showSurfaceFn: self createShowSurfaceFn.
		
	"now we should place this structure to external memory"
	
	ptr := NativeBoost allocate: (SQSurfaceDispatch instanceSize).
	NativeBoost memCopy: dispatch address to: ptr size: (SQSurfaceDispatch instanceSize).
	
	dispatch := ptr.