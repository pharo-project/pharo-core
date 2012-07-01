file operations
deleteFileNamed: localFileName
	"Delete the file with the given name in this directory."

	self deleteFileNamed: localFileName ifAbsent: [].
