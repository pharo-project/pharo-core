changeDebuggerActionsForContext: aContext excluding: aDebugger
	
	^ (self debuggersForContext: aContext excluding: aDebugger ) collect: [ :aDebuggerClass | 
		(self forDebugger: aDebugger)
			debuggerClass: aDebuggerClass ]