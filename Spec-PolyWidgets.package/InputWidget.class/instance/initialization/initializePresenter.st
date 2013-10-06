initializePresenter

	input whenTextIsAccepted: [:text |
		self ok == false
			ifFalse: [ value contents: text ] ].
		
	title whenChangedDo: [ self updateTitle ]