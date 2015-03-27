sourceCodeRefactoringMenu: aBuilder
	| target |
	target := aBuilder model.
	
	(aBuilder item: #'Format')
		order: 1100;
		keyText: 'Shift f';
		action: [ target refactor formatSourceCode ].
		
	(aBuilder item: #'Source code refactoring')
			order: 1101;
			arguments: {};
			withSeparatorAfter.