appliesToDebugger: aDebugger

	^ aDebugger session interruptedContext selector == #subclassResponsibility 