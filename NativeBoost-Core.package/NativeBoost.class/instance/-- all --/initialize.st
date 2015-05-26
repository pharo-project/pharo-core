initialize
	"once we have call gate function, we can turn bootstrapping mode off"
	bootstrapping := true.
	
	"first, wipe out all native code from image"
	self class clearNativeCode.
	
	"now, we can enable the native code"
	self primEnableNativeCode.
	
	Current := self.   "set the class var"

	"Init basic stuff"
	self initializeExternalHeap.
		
	"callback counter"
	callbackCounterAddr := self allocate: 4.
	callbackCounterAddr nbInt32AtOffset: 0 put:  0.

	" finally, generate callgate function to finish bootstrap procedure"
	self callgateFunctionAddress.

	self initializeForNewSession.
