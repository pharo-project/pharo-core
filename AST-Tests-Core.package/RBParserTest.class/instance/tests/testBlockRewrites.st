testBlockRewrites
	| rewriter tree |
	tree := RBParser 
				parseMethod: 'method: asdf
	<primitive: 1>
	<primitive: 2>
	^asdf + self foo + asdf'.
	rewriter := RBParseTreeRewriter new.
	rewriter 
		replace: 'asdf'
		with: 'fdsa'
		when: [:aNode | aNode parent parent isReturn].
	rewriter replace: 'self foo'
		withValueFrom: [:aNode | RBVariableNode named: aNode selector asString].
	rewriter 
		replaceArgument: 'asdf'
		withValueFrom: [:aNode | RBVariableNode named: 'xxx']
		when: [:aNode | false].
	rewriter executeTree: tree.
	self compare: tree
		to: (RBParser 
				parseMethod: 'method: asdf
	<primitive: 1>
	<primitive: 2>
	^asdf +  foo + fdsa')