sourceCodeRefactoringMenu: aBuilder
	<nautilusGlobalSourceCodeMenu>
	| target |
	target := aBuilder model.	
	target selectedClass ifNotNil: [:selectedClass | selectedClass sourceCodeRefactoring: aBuilder ]