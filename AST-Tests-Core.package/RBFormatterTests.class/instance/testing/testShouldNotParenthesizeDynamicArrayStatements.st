testShouldNotParenthesizeDynamicArrayStatements
	| source tree setsOfParentheses |
	source := '{#date -> #(''1'')}'.
	tree := RBParser parseExpression: source.
	RBConfigurableFormatter new format: tree.
	setsOfParentheses := tree formattedCode count: [ :c | c = $( ].
	self assert: setsOfParentheses equals: 1