debuggerStructureIn: browser
	
	browser
		row: #stack;
		row: [ :c | c
			column: #code; 
			column: #test ] span: 2;
		row: #inspector.
		