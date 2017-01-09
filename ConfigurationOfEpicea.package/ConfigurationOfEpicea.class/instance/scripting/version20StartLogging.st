version20StartLogging
	"Start recording IDE events"

	(self class environment at: #EpSessionStoreStrategy)
		defaultBaseDirectoryLocator: FileLocator preferences / 'pharo' / 'epicea-study-1'.
	
	(self class environment at: #EpMonitor) current enable.