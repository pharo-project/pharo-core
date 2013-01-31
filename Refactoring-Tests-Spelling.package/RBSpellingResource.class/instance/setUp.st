running
setUp
	super setUp.
	RBSpellChecker classPool
		at: #Default
		put: RBInternalSpellChecker new