copyMethodChunkFrom: aStream
	"Copy the next chunk from aStream (must be different from the receiver)."
	
	self nextChunkPut: aStream nextChunkText