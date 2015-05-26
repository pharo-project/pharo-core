saveAndQuit
	Cursor write showWhile: [
		Smalltalk snapshot: true andQuit: true
	]