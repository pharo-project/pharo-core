gtConstructDebuggerInspectorIn: composite for: aDebugger
	
	^ composite custom: (GTDebuggerInspector new 
		debugger: aDebugger;
		startOn: self)