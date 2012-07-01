saving
saveAs: newName
	newName ifNil: [ ^ self ].
	(SourceFiles at: 2) ifNotNil:
		[self closeSourceFiles; "so copying the changes file will always work"
			 saveChangesInFileNamed: (self fullNameForChangesNamed: newName)].
	^self saveImageInFileNamed: (self fullNameForImageNamed: newName)