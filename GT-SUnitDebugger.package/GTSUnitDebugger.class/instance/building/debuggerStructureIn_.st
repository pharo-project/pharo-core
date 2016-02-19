debuggerStructureIn: browser
	
	browser
		row: #stack;
		row: [ :c | c
			column: #code.
			self shouldDisplayExtraCodePane ifTrue: [ 
				c column: #test ] ] span: 2;
		row: #inspector.
		