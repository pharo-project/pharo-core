version41StartLogging
	"Start recording IDE events"

	(self class environment at: ##OmSessionStore) 
		defaultBaseLocator: FileLocator preferences / 'pharo' / 'epicea-3.3'.
	
	(self class environment at: #EpMonitor) current enable.