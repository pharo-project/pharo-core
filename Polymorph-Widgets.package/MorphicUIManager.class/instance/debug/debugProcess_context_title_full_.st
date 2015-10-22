debugProcess: process context: context title: title full: bool	
	^ Smalltalk tools debugger 
		openOn: process 
		context: context 
		label: title 
		contents: nil 
		fullView: bool.