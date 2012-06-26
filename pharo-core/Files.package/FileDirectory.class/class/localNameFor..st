name utilities
localNameFor: fullName 
	"Return the local part the given name."
	DirectoryClass
		splitName: fullName
		to: [:dirPath :localName | ^ localName]