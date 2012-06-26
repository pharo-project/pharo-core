as yet unclassified
allVersionNames
	^ self readableFileNames collect: [:ea | self versionNameFromFileName: ea]