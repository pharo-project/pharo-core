file stream creation
readOnlyFileNamed: localFileName
	"Open the existing file with the given name in this directory for read-only access."

	^ FileStream concreteStream readOnlyFileNamed: (self fullNameFor: localFileName)
