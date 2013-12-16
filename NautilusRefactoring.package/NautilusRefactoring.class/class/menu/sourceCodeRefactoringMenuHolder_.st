sourceCodeRefactoringMenuHolder: aBuilder
	<nautilusGlobalSourceCodeMenu>
	| target |
	target := aBuilder model.	
	target selectedClass ifNotNil: [:selectedClass |  selectedClass sourceCodeRefactoringMenu: aBuilder ].