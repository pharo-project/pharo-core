debuggersForContext: aContext

	^ self debuggersMatching: [ :aDebugger | aDebugger handlesContext: aContext ]