menu
refactoringMethodMenu: aBuilder
	<nautilusGlobalMethodMenu>

	| target |
	target := aBuilder model.
	target selectedMethod ifNil:[ ^ target ].
	
	(aBuilder item: #'Refactoring')
		order: -100.
			
	(self renameMethodAllItem: aBuilder)
		order: -90;
		withSeparatorAfter