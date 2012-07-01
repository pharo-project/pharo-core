as yet unclassified
loadVersionInfoFromFileNamed: aString
	^ self versionReaderForFileNamed: aString do: [:r | r info]
	