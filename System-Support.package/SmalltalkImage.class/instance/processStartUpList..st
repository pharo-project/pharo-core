snapshot and quit
processStartUpList: resuming
	"Send #startUp to each class that needs to run initialization after a snapshot."

	^ self send: #startUp: toClassesNamedIn: StartUpList with: resuming.
