file stream creation
oldFileNamed: localFileName
	"Open the existing file with the given name in this directory."

	^ FileStream concreteStream oldFileNamed: (self fullNameFor: localFileName)
