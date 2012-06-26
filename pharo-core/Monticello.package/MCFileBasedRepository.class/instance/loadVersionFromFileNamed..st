as yet unclassified
loadVersionFromFileNamed: aString

	(MCCacheRepository default includesFileNamed: aString)
		ifTrue: [ ^ MCCacheRepository default loadVersionFromFileNamed: aString].
	
	^ self versionReaderForFileNamed: aString do: [:r | r version]