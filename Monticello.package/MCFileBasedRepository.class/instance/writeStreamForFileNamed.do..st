as yet unclassified
writeStreamForFileNamed: aString do: aBlock
	^ self writeStreamForFileNamed: aString replace: false do: aBlock