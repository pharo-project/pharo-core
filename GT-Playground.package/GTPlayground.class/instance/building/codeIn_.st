codeIn: a
	^ a pharoPlayground
		title: [ self newEditableLabelMorph ];
		format: [ :page | page content ];
		act: [ :text :page |
				text selectionInterval: (1 to: text text size).
				text highlightEvaluateAndDo: [ :result | text selection: result ] ]
			icon: GLMUIThemeExtraIcons glamorousGo
			on: $G
			entitled: 'Do it all and go';
		installGoAction;
		installDefaultSelectionActions;
		act: [ :text :page | page publish ]
			icon: ThemeIcons current glamorousSaveToUrl
			entitled: 'Remote publish';
		addAction: 
			(GLMPopupAction new
				action: [ :text :page :popup | self newBindingsListIn: popup ]; 
				icon: ThemeIcons current glamorousTable;
				title: 'Bindings';
				yourself);
		dynamicActions: [ self actionsForPreviousContents ];
		onChangeOfPort: #text act: [ :text :page | page saveContent: text text ]