readUpToEndOfStyleChunk
	"Style chunks are between $] and $["
	^readStream upTo: $[