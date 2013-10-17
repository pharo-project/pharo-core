windowIsClosing
	startedCPUWatcher ifTrue: [ CPUWatcher stopMonitoring ]