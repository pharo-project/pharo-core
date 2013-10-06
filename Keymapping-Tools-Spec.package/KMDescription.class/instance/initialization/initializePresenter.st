initializePresenter
		
	displayList whenSelectedItemChanged: [ updatingBlock value: categories contents ].
	categories whenChangedDo: [:col | updatingBlock value: col ].
	okToolbar okAction: [ self delete ].