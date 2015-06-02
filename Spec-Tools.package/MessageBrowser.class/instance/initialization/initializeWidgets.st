initializeWidgets

	listModel := self newMultiColumnList.
	textModel := self newText.
	toolbarModel := self instantiate: MethodToolbar.
	
	listModel displayBlock: [ :item | self wrapItem: item ].
	textModel aboutToStyle: true.
	textModel whenBuiltDo: [ :ann | ann widget font: self codeFont ].
	refreshingBlockHolder := [ :item | true ] asValueHolder.
				
	self
		setListMenu;
		initializeDropList;
		setFocus.
