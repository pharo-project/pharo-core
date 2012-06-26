as yet unclassified
selectedFileName

	^ self selectedFileEntry ifNotNil: [ :dir | dir basename ] ifNil: [ nil ].