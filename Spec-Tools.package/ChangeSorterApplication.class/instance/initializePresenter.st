initialization
initializePresenter

	prettyButton activationAction: [ 
		prettyPrint := true.
		self updateTextContents ].
	prettyButton desactivationAction: [ 
		prettyPrint := false.
		self updateTextContents  ].
	diffButton activationAction: [ 
		showDiff := true.
		self updateTextContents ].
	diffButton desactivationAction: [ 
		showDiff := false.
		self updateTextContents  ].
	self registerChangeActions.
	self registerClassActions.
	self registerSelectorActions.