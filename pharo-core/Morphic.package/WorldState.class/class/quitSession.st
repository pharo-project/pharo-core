world menu items
quitSession
	| save |
	save := (self confirm: 'Save changes before quitting?' translated 
		orCancel: [ ^ self ]).
	Cursor write showWhile: [
		Smalltalk
			snapshot: save
			andQuit: true.
	]