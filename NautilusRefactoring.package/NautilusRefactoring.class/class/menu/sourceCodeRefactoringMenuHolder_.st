sourceCodeRefactoringMenuHolder: aBuilder
	<nautilusGlobalSourceCodeMenu>
	| target |
	target := aBuilder model.	
	target selectedClass ifNotNilDo: [:selectedClass |  selectedClass sourceCodeRefactoringMenu: aBuilder ].