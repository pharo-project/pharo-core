testSymbolLiteral
	| tree |
	#(
	'#<' #<
	'#>' #>
	'#<>' #<>
	'# foo' #foo
	'#"bar"foo' #foo 
	'##foo' #foo 
	'###foo' #foo 
	'#foo:' #foo:
	'#foo::' #'foo::'
	'#foo::bar' #'foo::bar'
	'#foo::bar:' #'foo::bar:'
	'#foo::bar::' #'foo::bar::') pairsDo: [ :parseString :expectedResult |
		tree := RBParser parseExpression: parseString.
		self assert: tree value equals: expectedResult.		
		self assert: tree start equals: 1.
		self assert: tree stop equals: parseString size ].
	
	#(('#1' 1) ('#12' 12) ('#12.3' 12.3) ('# 1' 1) ('##1' 1) ('#"bar"1' 1)) do: [ :pair | 
		tree := RBParser parseExpression: pair first.
		self assert: tree value = pair second.		
		self assert: tree start > 1.
		self assert: tree stop = pair first size ]