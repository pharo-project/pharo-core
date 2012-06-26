as yet unclassified
selectedAnyFileDirectory
	"Answer the file directory for the selected file or, if none
	or not a directory, the selected file directory."

	^self selectedFileEntry
		ifNil: [self selectedFileDirectory]
		ifNotNil: [:fe | 
			self selectedFileDirectory ifNotNil: [:fd |
					fe isDirectory ifTrue: [
						fd / fe name]]]