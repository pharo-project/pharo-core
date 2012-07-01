fileIn/Out
fileOutOn: aFileStream moveSource: moveSource toFile: fileIndex initializing: aBool
	super fileOutOn: aFileStream
		moveSource: moveSource
		toFile: fileIndex.
	(aBool and:[moveSource not and: [self methodDict includesKey: #initialize]]) ifTrue: 
		[aFileStream cr.
		aFileStream cr.
		aFileStream nextChunkPut: thisClass name , ' initialize'.
		aFileStream cr]