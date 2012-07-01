*Network-Url
asUrl
	"Convert my path into a file:// type url - a FileUrl."
	
	^FileUrl pathParts: (self pathParts copyWith: '')