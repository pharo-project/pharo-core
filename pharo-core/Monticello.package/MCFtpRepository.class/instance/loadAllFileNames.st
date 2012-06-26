as yet unclassified
loadAllFileNames
	^ self clientDo:
		[:client |
		self parseDirectoryListing: client getDirectory]