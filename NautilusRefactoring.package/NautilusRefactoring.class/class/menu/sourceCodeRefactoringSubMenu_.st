sourceCodeRefactoringSubMenu: aBuilder
	<nautilusGlobalSourceCodeMenu>
	| target |
	target := aBuilder model.	
	target selectedMethod ifNil:[^ self].
	target selectedClass ifNotNil: [:selectedClass | selectedClass sourceCodeRefactoring: aBuilder ]