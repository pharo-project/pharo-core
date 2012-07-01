file operations
recursiveDelete
	"Delete the this directory, recursing down its tree."
	self directoryNames
		do: [:dn | (self directoryNamed: dn) recursiveDelete].
	self deleteLocalFiles.
	"should really be some exception handling for directory deletion, but no 
	support for it yet"
	self containingDirectory deleteDirectory: self localName