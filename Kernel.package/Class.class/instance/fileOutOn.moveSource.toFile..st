fileIn/Out
fileOutOn: aFileStream moveSource: moveSource toFile: fileIndex 
	"File a description of the receiver on aFileStream. If the boolean argument,
	moveSource, is true, then set the trailing bytes to the position of aFileStream and
	to fileIndex in order to indicate where to find the source code."
	^self fileOutOn: aFileStream moveSource: moveSource toFile: fileIndex initializing: true