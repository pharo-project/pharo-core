unzipping
unzip: fullFileName to: pathString
	"Unzip the contents of the file specified by the full path name fullFileName to the location given by pathString."
	
	| zipped buffer unzipped newName |
	newName := fullFileName copyUpToLast: FileSystem disk extensionDelimiter.
	pathString asFileReference ensureDirectory.
	unzipped := FileStream newFileNamed: (pathString asFileReference / newName) fullName.
	unzipped isNil ifTrue: [self error: pathString, ' looks incorrect'].
	[ unzipped binary. 
	zipped := self on: (FileStream readOnlyFileNamed: fullFileName).
	buffer := ByteArray new: 50000.
	[zipped atEnd] whileFalse: [unzipped nextPutAll: (zipped nextInto: buffer)]]
		ensure: [
			zipped close.
			unzipped close].
	^ newName