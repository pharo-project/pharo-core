testKeyClassesArePresentInStartupList
	| keyClasses registeredHandlers |
	keyClasses := #(#Delay #ProcessorScheduler #InputEventFetcher #ExternalObject #Alien #FFICallbackThunk #FFIMethodRegistry #Stdio #OSPlatform #UUIDGenerator #DiskStore #SmalltalkImage #WeakArray #BasicCommandLineHandler).
	registeredHandlers := SessionManager default startupList
		collect: #handledId.
	
	keyClasses do:	[ :className |
		self assert: (registeredHandlers includes: className).
		self assert: (self hasStartUpOrShutDownMethod: (Smalltalk globals at: className)) ].
	
	self assert: (registeredHandlers includes: #UIManagerSessionHandler).