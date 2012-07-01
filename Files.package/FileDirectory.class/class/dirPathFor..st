name utilities
dirPathFor: fullName 
	"Return the directory part the given name."
	DirectoryClass
		splitName: fullName
		to: [:dirPath :localName | ^ dirPath]