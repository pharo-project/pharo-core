error signalling
signalFileDoesNotExist: aPath
	"Raise FSFileDoesNotExist exception"
		
	^ FileDoesNotExist signalWith: aPath