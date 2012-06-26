instance creation
pathParts: aCollectionOfPathParts
	"Create a FileUrl."

	^self host: nil pathParts: aCollectionOfPathParts isAbsolute: true