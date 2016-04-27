materializationFromFileNamed: aFilename

	^StandardFileStream 
		readOnlyFileNamed: aFilename 
		do: [:aFileStream | 
			(self newDefault materializeFrom: aFileStream binary) ]
