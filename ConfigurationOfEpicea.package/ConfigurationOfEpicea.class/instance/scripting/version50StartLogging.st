version50StartLogging
	"Start recording IDE events in default directory, i.e. OmSessionStore defaultBaseLocator"

	(self class environment at: #EpMonitor) current enable.