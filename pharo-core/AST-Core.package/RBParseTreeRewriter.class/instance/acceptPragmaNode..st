visitor-double dispatching
acceptPragmaNode: aPragmaNode 
	aPragmaNode arguments: (aPragmaNode arguments collect: [:each | self visitNode: each])