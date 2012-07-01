as yet unclassified
includesFileNamed: aString
	"HACK: speed up the cache hits"
	^ FileStream isAFileNamed: (directory / aString) fullName