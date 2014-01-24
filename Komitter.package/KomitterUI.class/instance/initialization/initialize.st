initialize

	model := nil asReactiveVariable.
	canCommit := false asReactiveVariable.
	
	super initialize.
	model
		whenChangedDo: [ :m | 
			[ self populateTreeFor: m ] fork.
			message text: m lastMessage.
			self populateRemotes ]