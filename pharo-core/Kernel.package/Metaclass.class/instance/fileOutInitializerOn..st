fileIn/Out
fileOutInitializerOn: aStream
	(self methodDict includesKey: #initialize) ifTrue: 
		[aStream cr.
		aStream nextChunkPut: thisClass name , ' initialize'].