initialization
initializeWidgets

	self instantiateModels: #(
		methodsListModel ListComposableModel
		classesListModel ListComposableModel
		changesListModel ListComposableModel
		prettyButton CheckBoxModel
		diffButton CheckBoxModel
		textModel TextModel ).
	 
	self setFocus.
	
	methodsListModel menu: [:menu :shifted | self messageMenu: menu shifted: shifted ].
	methodsListModel shortcuts: [:event :source | self methodShortcuts: event from: source ].
	changesListModel menu: [:aMenu :shifted | self changeSetMenu: aMenu shifted: shifted  ].
	changesListModel shortcuts: [:event :source | self changeSetShortcuts: event from: source ].	
	classesListModel menu: [:aMenu :shifted | self classMenu: aMenu shifted: shifted ].
	classesListModel shortcuts: [:event :source | self classShortcuts: event from: source ].

	changesListModel items: self model allChanges.
	changesListModel displayBlock: [:item | item name ].
	textModel aboutToStyle: true.
	