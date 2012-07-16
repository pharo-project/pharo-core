streams
fileNamed: fileName do: block
	^ fileName asFileReference 
		readStreamDo: block