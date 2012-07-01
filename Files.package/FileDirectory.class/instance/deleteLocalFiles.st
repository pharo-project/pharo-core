file operations
deleteLocalFiles
	"Delete the local files in this directory."

	self fileNames do:[:fn| self deleteFileNamed: fn ifAbsent: [(CannotDeleteFileException new
			messageText: 'Could not delete the old version of file ' , (self fullNameFor: fn)) signal]]
