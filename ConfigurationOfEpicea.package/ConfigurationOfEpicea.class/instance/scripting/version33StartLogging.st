version33StartLogging
	"Start recording IDE events"

	(self class environment at: ##OmSessionStore) 
		defaultBaseDirectoryLocator: FileLocator preferences / 'pharo' / 'epicea-3.3'.
	
	(self class environment at: #EpMonitor) current enable.