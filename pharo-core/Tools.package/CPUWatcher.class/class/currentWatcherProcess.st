as yet unclassified
currentWatcherProcess
	^CurrentCPUWatcher ifNotNil: [ CurrentCPUWatcher watcherProcess ]
