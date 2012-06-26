file stream creation
fileNamed: localFileName
	"Open the file with the given name in this directory for writing."

	^ FileStream concreteStream fileNamed: (self fullNameFor: localFileName)
