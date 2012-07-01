transforming
transform
	| parseTree matcher method |
	method := class methodFor: selector.
	parseTree := method parseTree.
	parseTree isNil ifTrue: [self refactoringError: 'Could not parse method'].
	class removeMethod: selector.
	class addInstanceVariable: temporaryVariableName.
	(matcher := RBParseTreeRewriter removeTemporaryNamed: temporaryVariableName) 
		executeTree: parseTree.
	method compileTree: matcher tree