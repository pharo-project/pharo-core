debug: context title: title full: bool
	
	^ UIManager default
		debugProcess: self 
		context: context 
		title: title 
		full: bool