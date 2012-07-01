miscellaneous
setMacFileInfoOn: aString
	"On Mac, set the file type and creator (noop on other platforms)"
	aString asFile setMacType: 'STch' creator: 'FAST'.