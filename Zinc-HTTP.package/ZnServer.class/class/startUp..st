system startup
startUp: resuming
	"Our system startUp hook: start all servers we manage"

	(resuming or: [ self alwaysRestart ])
		ifTrue: [
			self managedServers do: [ :each | each start ] ]