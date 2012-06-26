file support
readStringFromFile: aFileName 
	"Read the content of the given file. Perform line endings normalization."
	| content |
	FileStream
		oldFileNamed: aFileName
		do: [:f | 
			f converter: (TextConverter newForEncoding: encoding).
			f wantsLineEndConversion: true.
			content := f contents.
			lineEnding := f lineEndConvention].
	^ content