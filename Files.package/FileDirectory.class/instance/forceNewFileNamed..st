file stream creation
forceNewFileNamed: localFileName
	"Open the file with the given name in this directory for writing.  If it already exists, delete it first without asking."

	^ FileStream concreteStream forceNewFileNamed: (self fullNameFor: localFileName)
