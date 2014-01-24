initializeWidgets

	self instantiateModels: #(
		listModel 		MultiColumnListModel
		textModel 		TextModel
		toolbarModel 	MethodToolbar ).
	
	listModel displayBlock: [ :item | self wrapItem: item ].
	textModel aboutToStyle: true.
	textModel whenBuiltDo: [ :ann | ann widget font: self codeFont ].
	refreshingBlockHolder := [ :item | true ] asReactiveVariable.
				
	self
		setListMenu;
		initializeDropList;
		setFocus.
