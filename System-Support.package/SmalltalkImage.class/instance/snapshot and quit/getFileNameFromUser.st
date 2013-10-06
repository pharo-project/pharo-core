getFileNameFromUser

	| newName |
	newName := UIManager default
		request: 'New File Name?' translated
		initialAnswer: (self imageFile basename copyUpToLast:  Path extensionDelimiter).
		
	newName isEmptyOrNil 
		ifTrue: [^nil].
	
	((self fileForImageNamed: newName) exists 
	or: [ (self fileForChangesNamed: newName) exists ]) 
		ifTrue: [ 
			(self confirm: ('{1} already exists. Overwrite?' translated format: {newName})) 
				ifFalse: [ ^ nil ]].
	^newName
