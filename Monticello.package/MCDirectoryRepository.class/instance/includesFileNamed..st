as yet unclassified
includesFileNamed: aString
	"HACK: speed up the cache hits"
	^ (directory / aString) exists.