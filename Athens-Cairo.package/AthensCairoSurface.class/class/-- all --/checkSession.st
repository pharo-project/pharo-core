checkSession
	uniqueSession == NativeBoost uniqueSessionObject ifFalse: [
		self initializeForNewSession
	].