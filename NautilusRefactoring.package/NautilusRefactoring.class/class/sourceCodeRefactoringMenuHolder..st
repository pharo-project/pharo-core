menu
sourceCodeRefactoringMenuHolder: aBuilder
	<nautilusSourceCodeMenu>
	| target |
	target := aBuilder model.
	
	(aBuilder item: #'Format')
		order: 9996;
		action: [ target refactor formatSourceCode ].
		
	(aBuilder item: #'Source code refactoring')
			order: 9997;
			arguments: {};
			withSeparatorAfter.