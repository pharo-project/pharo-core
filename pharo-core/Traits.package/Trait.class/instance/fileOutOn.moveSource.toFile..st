filein/out
fileOutOn: aFileStream moveSource: moveSource toFile: fileIndex 
	"This is just copied from Class.. the whole fileout is a mess."
	^self fileOutOn: aFileStream moveSource: moveSource toFile: fileIndex initializing: true