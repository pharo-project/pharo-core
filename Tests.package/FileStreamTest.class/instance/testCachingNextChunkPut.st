testing
testCachingNextChunkPut
	"Ensure that nextChunkPut:/nextChunk works properly on a caching file"
	| file text read |
	[file := FileStream forceNewFileNamed: 'testCachingNextChunkPut'.
	text := 'this is a chunkful of text'.
	file nextChunkPut: text.
	read := [file position: 0; nextChunkText] valueWithin: 1 seconds onTimeout:[''].
	self assert: read = text.
	] ensure:[
		file close. 
		(FileSystem disk workingDirectory / file name) ensureDeleted ].