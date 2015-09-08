saveAs
	| reference |
	reference := UIManager default 
		fileSave: 'Save Image as?' 
		initialAnswer: (Smalltalk imageFile basename copyUpToLast:  Path extensionDelimiter)
		extensions: #('image') 
		path: Smalltalk imageDirectory.
		
	reference ifNotNil: [ Smalltalk saveAs: reference parent / (reference basenameWithoutExtension: 'image') ]