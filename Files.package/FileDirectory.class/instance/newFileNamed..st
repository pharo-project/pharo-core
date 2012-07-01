file stream creation
newFileNamed: localFileName
	"Create a new file with the given name in this directory."

	^ FileStream concreteStream newFileNamed: (self fullNameFor: localFileName)
