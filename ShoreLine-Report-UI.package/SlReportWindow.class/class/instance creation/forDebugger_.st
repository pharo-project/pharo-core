forDebugger: aDebugger

	^ self basicNew initialize
		debugger: aDebugger;
		generateReport;
		yourself