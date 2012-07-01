file stream creation
fileNamed: localFileName do: aBlock
	"Open the file with the given name in this directory for writing and pass it as argument to aBlock."

	^ FileStream concreteStream fileNamed: (self fullNameFor: localFileName) do: aBlock
