initializeWidgets

	methodsListModel := self instantiate: NewListModel.
	classesListModel := self instantiate: NewListModel.
	changesListModel := self instantiate: NewListModel.
	prettyButton := self newCheckBox.
	diffButton := self newCheckBox.
	textModel := self newCode.
	 
	self setFocus.
	
	methodsListModel menu: [:menu :shifted | self messageMenu: menu shifted: shifted ].
	changesListModel menu: [:aMenu :shifted | self changeSetMenu: aMenu shifted: shifted  ].
	classesListModel menu: [:aMenu :shifted | self classMenu: aMenu shifted: shifted ].

	changesListModel items: self model allChanges.
	changesListModel displayBlock: [:item | item name ].
	textModel aboutToStyle: true.
	