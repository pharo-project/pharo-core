unregisterWindow: window 

	WindowMap removeKey: window validHandle handle windowID.
	
	"Does it make sense to keep the SDL event loop process running even if no OSWindow is currently open ?"
	"WindowMap ifEmpty: [ 
		EventLoopProcess terminate.
		EventLoopProcess := nil.
	]."