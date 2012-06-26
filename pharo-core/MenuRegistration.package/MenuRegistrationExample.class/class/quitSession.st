menu actions
quitSession
	Smalltalk
		snapshot: (self confirm: 'Save changes before quitting?' translated orCancel: [ ^ self ])
		andQuit: true