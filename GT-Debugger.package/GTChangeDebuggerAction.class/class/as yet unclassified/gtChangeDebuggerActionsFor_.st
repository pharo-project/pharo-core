gtChangeDebuggerActionsFor: aDebugger
	<gtDebuggingAction>
	
	^ self 
		changeDebuggerActionsForContext: aDebugger interruptedContext 
		excluding: aDebugger