accessing
instructions
	^ instructions ifNil: [ self initInstructions ]