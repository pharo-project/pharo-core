quitSession
	| save |
	save := (self confirm: 'Save changes before quitting?' translated 
		orCancel: [ ^ self ]).
	
	Smalltalk tools userManager canSaveImage
		ifFalse: [ save := false ].
		
	Cursor write showWhile: [
		Smalltalk
			snapshot: save
			andQuit: true.
	]