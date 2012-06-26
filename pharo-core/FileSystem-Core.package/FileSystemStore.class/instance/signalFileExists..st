error signalling
signalFileExists: aPath
	"Raise FSFileExist exception"
	
	^ FileExists signalWith: aPath