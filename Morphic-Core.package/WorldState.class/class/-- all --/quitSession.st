quitSession
	| save |
	save := UserManager default canSaveImage
		ifFalse: [ false ]
		ifTrue: [ self confirm: 'Save changes before quitting?' translated orCancel: [ ^ self ] ].
	save 
		ifTrue: [Cursor write showWhile: [ Smalltalk snapshot: true andQuit: true ]] 
		ifFalse: [Smalltalk snapshot: false andQuit: true]
 