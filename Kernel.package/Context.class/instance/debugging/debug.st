debug
	^ UIManager default
		debugContext: self 
		title: self printString 
		contents: nil
		