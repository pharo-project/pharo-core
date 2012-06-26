initialization
initializePresenter
		
	displayList whenSelectedItemChanged: [ updatingBlock value: categories contents ].
	categories whenChangedDo: [:col | updatingBlock value: col ].
	okButton action: [ self delete ].