codeIn: a
	^ a pharoPlayground
		title: [ :page | 
			| hPadding |
			hPadding := 5.
			GLMEditableLabelBrick new
				hSpaceFill;
				text: 'Untitled';
				with: [ :label | label when: #onAccepted do: [ label text logCr ] ];
				cancelOnEscape;
				cancelOnFocusLost;
				with: [ :b | b margin: { b themer focusedBorderWidth . 0 } ];
				with: [ :b | b editBrick
					hShrinkWrap;
					rubricBackgroundColor: b themer rubricBackgroundColor;
					margins: (hPadding@0 corner: hPadding@0) ];
				with: [ :b | b maxWidth: [ b approximateWidth + b owner hPadding] ];
				with: [ :b | b labelBrick margin: { 0 . hPadding + 2. 0 . hPadding } ];
				with: [ :b | b layout widthDependency: [ b owner ] ];
				with: [ :b | b editBrick layout widthDependency: [ b ] ];
				yourself ];
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
			icon: GLMUIThemeExtraIcons glamorousSaveToUrl
			entitled: 'Remote publish';
		dynamicActions: [ self actionsForPreviousContents ];
		onChangeOfPort: #text act: [ :text :page | page saveContent: text text ]