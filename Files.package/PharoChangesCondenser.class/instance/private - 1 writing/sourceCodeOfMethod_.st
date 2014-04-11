sourceCodeOfMethod: aMethod
	"Optimized version of: aMethod sourceCode
	Reuse the same stream instead of reopening a new stream on each read"
	^ (self sourceStreamOfMethod: aMethod) nextChunk