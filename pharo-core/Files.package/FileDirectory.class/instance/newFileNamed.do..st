file stream creation
newFileNamed: localFileName do: aBlock
	"Create a new file with the given name in this directory and pass it as argument to aBlock."

	^ FileStream concreteStream newFileNamed: (self fullNameFor: localFileName) do: aBlock
