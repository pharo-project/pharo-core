openFullNoSuspendLabel: aString 
	"Create and schedule a full debugger with the given label. Do not
	terminate the current active process."
	self 
		openWithSpec;
		updateToolbar;
		label: aString.
	
	self flag: 'Would ne better to move this into the session'.
	self session errorWasInUIProcess: (UIManager default spawnNewProcessIfThisIsUI: self interruptedProcess)
	"errorWasInUIProcess := UIManager default spawnNewProcessIfThisIsUI: interruptedProcess"