file stream creation
forceNewFileNamed: localFileName do: aBlock
	"Open the file with the given name in this directory for writing.  If it already exists, delete it first without asking and pass it as argument to aBlock."

	^ FileStream concreteStream forceNewFileNamed: (self fullNameFor: localFileName) do: aBlock
