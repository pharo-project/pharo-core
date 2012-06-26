instance creation
pathParts: aCollectionOfPathParts isAbsolute: aBoolean
	"Create a FileUrl."

	^self host: nil pathParts: aCollectionOfPathParts isAbsolute: aBoolean