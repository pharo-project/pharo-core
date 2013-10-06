testExampleIfNotNilDoReturnNil
	| ast |
	ast := (OCOpalExamples>>#exampleIfNotNilDoReturnNil) parseTree.
	self nameAnalysisNoClosureIn: OCOpalExamples for: ast.
	self assert: ast scope isMethodScope.
	self assert: ast scope tempVars isEmpty. "ifnilDoL is *not* inlined, so the arg is a temp of the enclosing scope"