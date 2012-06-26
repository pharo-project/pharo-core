menu
sourceCodeRefactoringMenuHolder: aBuilder
	<nautilusSourceCodeMenu>
	| target |
	target := aBuilder model.
	(aBuilder item: #'Source code refactoring')
			order: 9997;
			arguments: {};
			withSeparatorAfter.