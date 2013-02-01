visiting rb nodes
acceptPragmaNode: aPragmaNode
	aPragmaNode arguments do: [ :each | self visitNode: each ]