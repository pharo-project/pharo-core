debugContext: context title: title contents: contentsStringOrNil
	^ Smalltalk tools debugger 
		openContext: context 
		label: title
		contents: nil