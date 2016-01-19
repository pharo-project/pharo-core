gcExternalNewType: aType size: aNumber
	"Create a new array in the C heap (with GC). 
	 This array needs to be disposed (using #free method)"
	^ self basicNew 
		initializeGcExternalType: aType size: aNumber;
		yourself