setUp

	context := [ (Set with: 1 with: 2) collect: [ :e | e * 2 ]. self halt ] asContext.
	process := Process 
		forContext: context 
		priority: Processor userInterruptPriority.
	session := DebugSession 
		process: process 
		context: context.
	nilContext := [ self isNil ] asContext.
	otherProcess := Process 
		forContext: nilContext 
		priority: Processor userInterruptPriority.
	otherSession := (DebugSession 
		process: otherProcess 
		context: nilContext) stepInto