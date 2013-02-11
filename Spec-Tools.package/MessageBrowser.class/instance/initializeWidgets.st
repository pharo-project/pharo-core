initialization
initializeWidgets

	self instantiateModels: #(
		listModel 		MultiColumnListModel
		textModel 		TextModel
		toolbarModel 	MethodToolbar ).
	
	listModel displayBlock: [ :item | self wrapItem: item ].
	textModel aboutToStyle: true.
	refreshingBlockHolder := [ :item | false ] asValueHolder.
				
	self
		setListMenu;
		initializeDropList;
		setFocus.
