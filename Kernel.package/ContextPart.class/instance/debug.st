debugging
debug
	^ Smalltalk tools debugger
		openContext: self 
		label: self printString 
		contents: nil
		