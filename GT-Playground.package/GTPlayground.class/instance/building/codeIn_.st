codeIn: a
	^ (self codePresentationIn: a)
		title: [ :page | 
			GTPlaygroundEditableTabLabel new
				text: page title;
				when: #accepted do: [ :text | 
					page setTitleAndEnsureInStash: text asString ];
				yourself ];
		format: [ :page | page content ];
		act: [ :text :page |
				text selectionInterval: (1 to: text text size).
				text highlightEvaluateAndDo: [ :result | text selection: result ] ]
			icon: GLMUIThemeExtraIcons glamorousGo
			on: $G
			entitled: 'Do it all and go';
		act: [ :text :page | page publish ]
			icon: Smalltalk ui icons glamorousSaveToUrl
			entitled: 'Remote publish';
		addAction:
			(GLMPopupAction new
				action: [ :text :page :popup | GTPlaygroundBindingsList new
					on: self currentBindingsSorted;
					when: #bindingRemoved do: [ :binding | self removeBinding: binding ];
					when: #inspect do: [ :binding | binding value inspect ];
					when: #go do: [ :binding | text selection: binding value ];
					yourself ]; 
				icon: Smalltalk ui icons glamorousTable;
				title: 'Bindings';
				yourself);
		dynamicActions: [ self actionsForPreviousContents ];
		dynamicActionsOnSelection: [ self contextMenuActions ];
		onChangeOfPort: #text act: [ :text :page | 
			page saveContent: text text.
			text clearUserEdits ]