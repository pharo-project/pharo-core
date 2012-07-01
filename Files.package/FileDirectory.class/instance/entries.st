enumeration
entries
	"Return a collection of DirectoryEntry's for the files and directories in this directory.  See primLookupEntryIn:index: for further details."
	"FileDirectory default entries"
	^ self directoryContentsFor: pathName
