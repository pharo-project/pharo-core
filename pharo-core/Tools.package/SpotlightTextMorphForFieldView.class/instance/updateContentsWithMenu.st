private
updateContentsWithMenu 
	Smalltalk tools codeCompletion uniqueInstance selectedAndClose
		ifNotNil: [ :selected |
			self 
				newContents: (selected reject: [ :each | each = Character space ]); 
				acceptContents ].