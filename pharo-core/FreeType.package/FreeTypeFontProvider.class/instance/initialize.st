initialize-release
initialize
	super initialize.
	fileInfos := OrderedCollection  new: 100.
	fileInfoCache := Dictionary new: 100. "keyed by file size" 
	embeddedFileInfoCache := Dictionary new: 10. "keyed by file size" 
	families := Dictionary new.
	