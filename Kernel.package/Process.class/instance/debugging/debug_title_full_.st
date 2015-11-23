debug: context title: title full: bool
	
	^ UIManager default
		openDebuggerOn: self 
		context: context 
		label: title 
		fullView: bool