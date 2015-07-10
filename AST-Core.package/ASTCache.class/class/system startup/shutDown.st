shutDown	
	| methodsWithLinks |
	"when resetting the AST Cache on image shutdown, keep all methods with meta links"
	methodsWithLinks := self default keys 
		select: [ :each | each hasLinks ]
		thenCollect: [ :each | each -> each ast ].
	self reset.
	methodsWithLinks do: [ :each | self default at: each key put: each value].