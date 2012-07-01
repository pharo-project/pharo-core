file operations
copyHere: aDirectoryEntryFile 
	"Copy aDirectoryEntryFile, which represents a file, to the directory I represent."
	aDirectoryEntryFile readStream in: 
		[ : readStream | 
		[ self 
			putFile: readStream
			named: aDirectoryEntryFile name ] ensure: [ readStream close ] ]