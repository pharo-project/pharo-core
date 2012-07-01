printing
printOn: stream
	stream
		nextPutAll: self datedVersion;
		nextPutAll: ' update ' , self highestUpdate printString