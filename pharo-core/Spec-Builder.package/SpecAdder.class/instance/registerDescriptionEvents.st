initialization
registerDescriptionEvents
	descriptionHolder
		whenChangedDo: [ :desc | 
			| items |
			instVars
				items: (desc addInstVarDescriptions collect: [ :e | DropListItem named: e name do: [ selectedInstVar := e ] ]).
			selectors
				items: (selectedInstVar type specSelectors collect: [ :e | DropListItem named: e do: [ selectedSpec := e ] ]) ]