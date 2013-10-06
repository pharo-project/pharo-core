initializeWidgets

	self instantiateModels: {(#listWidget -> #MultiColumnListModel)}.
	
	self list displayBlock: [ :aContext | self columnsFor: aContext ].
	self list menu: [ :aMenu |
		self contextMenu: aMenu]