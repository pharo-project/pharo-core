quitSession
	| save |
	save := Smalltalk tools userManager canSaveImage
		ifFalse: [ false ]
		ifTrue: [ self confirm: 'Save changes before quitting?' translated orCancel: [ ^ self ] ].
	save 
		ifTrue: [Cursor write showWhile: [ Smalltalk snapshot: true andQuit: true ]] 
		ifFalse: [Smalltalk snapshot: false andQuit: true]
 