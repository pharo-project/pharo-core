version54StartLogging
	"Start recording IDE events if in interactive mode"

	Smalltalk isInteractive ifTrue: [
		(self class environment at: ##OmSessionStore) 
			defaultBaseLocator: FileLocator preferences / 'pharo' / 'epicea-5.4-sessions'.
		
		(self class environment at: #EpMonitor) current enable ]