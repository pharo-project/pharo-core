updateContentsWithMenu 
	Smalltalk tools codeCompletion uniqueInstance selectedAndClose
		ifNotNil: [ :selected |
			search textMorph
				newContents: (selected reject: [ :each | each = Character space ]); 
				acceptContents ].