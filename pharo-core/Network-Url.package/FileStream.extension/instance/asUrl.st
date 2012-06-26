*Network-URL
asUrl
	"Convert my path into a file:// type url - a FileUrl."
	
	^FileUrl pathParts: (self directory pathParts copyWith: self localName)