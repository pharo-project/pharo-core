visitPragmaNode: aPragmaNode
	aPragmaNode selectorParts do: [ :keyword|
	self 
		addStyle: #pragmaKeyword
		forNode: keyword ].
	
	aPragmaNode arguments do: [ :each | self visitNode: each ]