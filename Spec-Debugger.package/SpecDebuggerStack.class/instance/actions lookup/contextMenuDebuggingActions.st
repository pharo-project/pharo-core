contextMenuDebuggingActions

	^ self session class 
		debuggingActionsForPragmas: self contextMenuDebuggingActionsPragmas 
		for: self debugger