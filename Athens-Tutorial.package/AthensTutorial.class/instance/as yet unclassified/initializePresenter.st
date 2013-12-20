initializePresenter

	next whenActionPerformedDo: [  self nextStep ].
	prev whenActionPerformedDo: [  self previousStep ].
	doit whenActionPerformedDo: [  self performDoit  ].
	

"	textpane widget font: (LogicalFont familyName: 'Arial' pointSize: 20). "
