file in/out
scanFrom: aStream
	"Reads in the organization from the next chunk on aStream.
	Categories or elements not found in the definition are not affected.
	New elements are ignored."

	self changeFromString: aStream nextChunk.
	aStream skipStyleChunk.