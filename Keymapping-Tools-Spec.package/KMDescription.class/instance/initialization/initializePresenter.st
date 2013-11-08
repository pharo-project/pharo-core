initializePresenter
		
	displayList whenSelectedItemChanged: [ updatingBlock value: categories value ].
	categories whenChangedDo: [:col | updatingBlock value: col ].
	okToolbar okAction: [ self delete ].