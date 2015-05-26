services
	"Answer potential file services associated with this class"

	^ { self serviceBrowseChangeFile. 
		self serviceBrowseDotChangesFile.
		self serviceBrowseCompressedChangeFile }