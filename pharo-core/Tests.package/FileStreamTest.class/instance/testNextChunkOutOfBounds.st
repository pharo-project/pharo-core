testing
testNextChunkOutOfBounds
	"self debug: #testNextChunkOutOfBounds"
	
	"Ensure that nextChunkPut:/nextChunk works properly on a caching file"
	| file text read |
	[file := FileStream forceNewFileNamed: 'testNextChunkOutOfBounds'.
	text := 'this is a chunkful of text'.
	file nextChunkPut: text.
	read := [file position: 999999; nextChunkText] valueWithin: 1 seconds onTimeout:[nil].
	self assert: read = ''.
	] ensure:[file close. FileDirectory default deleteFileNamed: file name ifAbsent:[]].