file operations
copyHere: aDirectoryEntryFile
	"Copy aDirectoryFileEntry, which represents a file, to the directory I represent."
	^ self asFileDirectory copyHere: aDirectoryEntryFile