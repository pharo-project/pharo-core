check: aString
	^ (RBSpellChecker default check: aString) 
		collect: [ :each | aString copyFrom: each first to: each last ]