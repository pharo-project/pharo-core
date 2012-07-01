file stream creation
readOnlyFileNamed: localFileName do: aBlock
	"Open the existing file with the given name in this directory for read-only access and pass it as argument to aBlock."

	^ FileStream concreteStream readOnlyFileNamed: (self fullNameFor: localFileName) do: aBlock
