sourceCodeRefactoringSubMenu: aBuilder
	<RubSmalltalkCodeMenu>
	| target |
	target := aBuilder model model interactionModel.
	target ifNil: [ ^self ].
	target selectedMethod ifNil: [ ^ self ].
	target selectedClass ifNotNil: [ :selectedClass | selectedClass sourceCodeRefactoring: aBuilder ]