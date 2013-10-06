testExampleIfNotNilDo
	| ast |
	ast := (OCOpalExamples>>#exampleIfNotNilDo) parseTree.
	self nameAnalysisNoClosureIn: OCOpalExamples for: ast.
	self assert: ast scope isMethodScope.
	self assert: ast scope tempVars isEmpty. "ifnilDo is not inlined"