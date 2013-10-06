setUp

	context := [ Set new ] asContext.
	process := Process 
		forContext: context 
		priority: Processor userInterruptPriority