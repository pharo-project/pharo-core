codeIn: a
	^ a pharoPlayground
		title: [ :page | page title ];
		format: [ :page | page content ];
		act: [ :text :page |
				text selectionInterval: (1 to: text text size).
				text evaluateSelectionAndDo: [ :result | text selection: result ] ]
			icon: GLMUIThemeExtraIcons glamorousGo
"			on: $G"
			entitled: 'Do it all and go';
		installGoAction;
		installDefaultSelectionActions;
		act: [ :text :page | page publishUrl ]
			icon: GLMUIThemeExtraIcons glamorousSaveToUrl
			entitled: 'Remote publish';
		dynamicActions: [ self actionsForPreviousContents ];
		onChangeOfPort: #text act: [ :text :page | page content: text text ]