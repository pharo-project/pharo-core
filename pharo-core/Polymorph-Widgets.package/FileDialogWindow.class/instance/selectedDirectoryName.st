as yet unclassified
selectedDirectoryName

	^ self selectedFileDirectory ifNotNil: [ :dir | dir basename ] ifNil: [ nil ].