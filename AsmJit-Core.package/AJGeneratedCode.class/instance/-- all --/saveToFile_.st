saveToFile: fileName

	(FileStream forceNewFileNamed: fileName)  
		nextPutAll: bytes;
		close  