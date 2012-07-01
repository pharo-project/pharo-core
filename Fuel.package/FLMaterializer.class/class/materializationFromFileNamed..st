materializing-shortcuts
materializationFromFileNamed: aFilename

	^StandardFileStream 
		oldFileNamed: aFilename 
		do: [:aFileStream | 
			(self newDefault materializeFrom: aFileStream binary) ]
