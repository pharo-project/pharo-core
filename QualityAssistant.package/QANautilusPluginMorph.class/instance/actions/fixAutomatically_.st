fixAutomatically: aQACritic

	| change |
	change := aQACritic change.

	ReEngine uniqueInstance notifyViewedDiffFor: aQACritic of: entity.
	
	(TextModel new
		title: 'Apply the proposed changes?';
		extent: 800@600;
		text: change diffedText;
		disable;
		openDialogWithSpec)
			okAction: [
				ReEngine uniqueInstance notifyCritic: aQACritic AutoFixedFor: entity.
				change execute ];
			centered;
			modalRelativeTo: self window