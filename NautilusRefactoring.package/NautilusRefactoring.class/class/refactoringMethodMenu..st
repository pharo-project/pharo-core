menu
refactoringMethodMenu: aBuilder
	<nautilusGlobalMethodMenu>
	| target |
	target := aBuilder model.
	target selectedMethod ifNil:[ ^ target ].
	
	(aBuilder item: #'Refactoring')
			order: -100.
			
	(aBuilder item: #'Rename method')
			keyText: 'r, m' if: Nautilus useOldStyleKeys not;
			keyText: 'r' if: Nautilus useOldStyleKeys;
			action: [ | scroll |
				scroll := target methodWidget vScrollValue.
				target refactor renameMethodFor: target selectedMethod.
				target methodWidget vScrollValue: scroll ];
			order: -90;
			withSeparatorAfter