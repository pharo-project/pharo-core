testing
fileOrDirectoryExists: filenameOrPath 
	"Handles the special case of testing for the root dir: there isn't a 
	possibility to express the root dir as full pathname like '/foo'."

	^ filenameOrPath = '/' or: [super fileOrDirectoryExists: filenameOrPath]