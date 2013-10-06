cpuWatcherEnabled
	^ CpuWatcherEnabled ifNil: [CpuWatcherEnabled := false]