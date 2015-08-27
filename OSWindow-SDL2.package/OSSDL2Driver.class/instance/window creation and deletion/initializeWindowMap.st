initializeWindowMap

	WindowMap ifNil: [ 
		WindowMap := WeakValueDictionary new. 
	].