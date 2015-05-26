saveSession
	Cursor write showWhile: [
		Smalltalk
			snapshot: true
			andQuit: false.
	]