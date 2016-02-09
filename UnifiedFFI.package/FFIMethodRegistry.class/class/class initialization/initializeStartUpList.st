initializeStartUpList
	SessionManager default 
		registerSystemClassNamed: #ExternalObject atPriority: 60; 
		registerSystemClassNamed: #Alien atPriority: 60;
		registerSystemClassNamed: #FFICallbackThunk atPriority: 60;
		registerSystemClassNamed: #FFIMethodRegistry atPriority: 60.

	