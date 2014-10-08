codeIn: a
	^ a pharoPlayground
		title: [ :page | page title ];
		format: [ :page | page content ];
		act: [ :text :page |
				page content: text text.
				text selectionInterval: (1 to: text text size).
				text evaluateSelectionAndDo: [ :result | text selection: result ]  ]
			icon: GLMUIThemeExtraIcons glamorousPlay
"			on: $G"
			entitled: 'Do it all and go';
		selectionAct: [ :text :page |
				page content: text text.
				text evaluateSelectionAndDo: [ :result | text selection: result ] ]
			on: $g
			entitled: 'Do it and go';
		installDefaultSelectionActions;
		dynamicActions: [ self actionsForPreviousContents ]