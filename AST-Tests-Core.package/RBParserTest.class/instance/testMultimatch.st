tests
testMultimatch
	| rewriter count |
	count := 0.
	rewriter := RBParseTreeRewriter new.
	rewriter 
		replace: '``@object at: ``@foo'
		with: '``@object foo: ``@foo'
		when: [:aNode | (count := count + 1) == 2].
	self compare: (rewriter
				executeTree: (RBParser parseExpression: 'self at: (bar at: 3)');
				tree)
		to: (RBParser parseExpression: 'self at: (bar foo: 3)')