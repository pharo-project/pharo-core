as yet unclassified
stopMonitoring
	"CPUWatcher stopMonitoring"

	CurrentCPUWatcher ifNotNil: [ CurrentCPUWatcher stopMonitoring. ].
	CurrentCPUWatcher := nil.
