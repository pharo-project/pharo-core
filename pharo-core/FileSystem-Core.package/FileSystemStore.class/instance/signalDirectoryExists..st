error signalling
signalDirectoryExists: aPath
	"Raise FSDirectoryExists exception"
		
	^ DirectoryExists signalWith: aPath