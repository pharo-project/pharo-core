file stream creation
oldFileNamed: localFileName do: aBlock
	"Open the existing file with the given name in this directory and pass it as argument to aBlock."

	^ FileStream concreteStream oldFileNamed: (self fullNameFor: localFileName) do: aBlock
