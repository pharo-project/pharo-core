visitor-double dispatching
acceptPragmaNode: aPragmaNode
	aPragmaNode arguments do: [ :each | self visitNode: each ]