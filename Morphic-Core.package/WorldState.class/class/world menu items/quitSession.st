quitSession
	| save |
	
	Smalltalk tools userManager canSaveImage
		ifFalse: [ save := false ]
		ifTrue: [ save := (self 
			confirm: 'Save changes before quitting?' translated 
			orCancel: [ ^ self ]) ].
		
	Cursor write showWhile: [
		Smalltalk
			snapshot: save
			andQuit: true.
	]