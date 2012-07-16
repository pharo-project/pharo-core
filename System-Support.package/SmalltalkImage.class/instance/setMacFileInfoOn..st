miscellaneous
setMacFileInfoOn: aString
	"On Mac, set the file type and creator (noop on other platforms)"
	aString asFileReference setMacType: 'STch' creator: 'FAST'.