codeIn: a
	^ a pharoPlayground
		title: [ :page | page title ];
		format: [ :page | page content ];
		act: [ :text :page |
				page content: text text.
				text selectionInterval: (1 to: text text size).
				text evaluateSelectionAndDo: [ :result | text selection: result ]  ]
			icon: GLMUIThemeExtraIcons glamorousPlay
"			on: $O"
			entitled: 'Execute all and open';
		selectionAct: [ :text :page |
				page content: text text.
				text evaluateSelectionAndDo: [ :result | text selection: result ] ]
			on: $o
			entitled: 'Open';
		installDefaultSelectionActions;
		selectionAct: [ :text :page |
				text selectLine.
				self systemNavigation 
					browseMethodsWithString: text selectedText
					matchCase: false ]
			on: $E
			entitled: 'Extended string search';
		dynamicActions: [ self actionsForPreviousContents ]