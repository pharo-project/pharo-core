appliesToDebugger: aDebugger

	^ aDebugger session isInterruptedContextPostMortem not and: [ 
		aDebugger bytecodePresentation selection offset > aDebugger currentContext pc ]