error signalling
signalDirectoryDoesNotExist: aPath
	"Raise FSDirectoryDoesNotExist exception"
		
	^ DirectoryDoesNotExist signalWith: aPath