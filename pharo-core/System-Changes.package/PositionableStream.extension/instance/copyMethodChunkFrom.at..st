*System-Changes
copyMethodChunkFrom: aStream at: pos
	"Copy the next chunk from aStream (must be different from the receiver)."
	
	aStream position: pos.
	self nextChunkPut: aStream nextChunkText.