codeIn: a
	^ a pharoPlayground
		title: [ :page | 
			| label |
			label := GLMLiveStringBrick new.
			label 
			"to make label take maximal only necessary space"
			maxWidth: [ label approximateWidth ];
			textLogic: [ 'Modified ', (DateAndTime now - page modificationTime) gtPlaygroundHumanReadableString  ];
			hSpaceFill;
			vSpaceFill;
			marginLeft: 5;
			marginRight: 5 ];
		format: [ :page | page content ];
		act: [ :text :page |
				text selectionInterval: (1 to: text text size).
				text highlightEvaluateAndDo: [ :result | text selection: result ] ]
			icon: GLMUIThemeExtraIcons glamorousGo
			on: $G
			entitled: 'Do it all and go';
		installGoAction;
		installDefaultSelectionActions;
		act: [ :text :page | page publishUrl ]
			icon: GLMUIThemeExtraIcons glamorousSaveToUrl
			entitled: 'Remote publish';
		dynamicActions: [ self actionsForPreviousContents ];
		onChangeOfPort: #text act: [ :text :page | page content: text text ]