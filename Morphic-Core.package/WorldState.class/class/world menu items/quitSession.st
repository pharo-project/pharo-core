quitSession
	| save |
	save := Smalltalk tools userManager canSaveImage
		ifFalse: [ false ]
		ifTrue: [ self confirm: 'Save changes before quitting?' translated orCancel: [ ^ self ] ].
	Cursor write showWhile: [ Smalltalk snapshot: save andQuit: true ]