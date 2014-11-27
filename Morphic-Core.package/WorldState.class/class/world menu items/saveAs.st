saveAs
	| reference |
	reference := UIManager default fileSave: 'New File Name?' extensions: #('image') path: Smalltalk imageDirectory.
	reference ifNotNil: [ Smalltalk saveAs: reference parent / reference basenameWithoutExtension ]