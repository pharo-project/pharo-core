notifyDebugger
	
	self needsUpdate ifTrue: [ 
		self debugger announce: (DebugActionExecuted forDebuggingAction: self) ]