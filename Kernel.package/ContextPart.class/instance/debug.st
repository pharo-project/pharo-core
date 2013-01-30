debugging
debug
	^ Smalltalk tools debugger
		openContext: self 
		label: 'Debug it'
		contents: nil