fixAutomatically: aQACritic

	| change |
	change := aQACritic change.

	ReSystemAnnouncer uniqueInstance notifyViewedDiffFor: aQACritic of: entity.
	
	(TextModel new
		title: 'Apply the proposed changes?';
		extent: 800@600;
		text: change diffedText;
		disable;
		openDialogWithSpec)
			okAction: [
				ReSystemAnnouncer uniqueInstance notifyCritic: aQACritic AutoFixedFor: entity.
				change execute ];
			centered;
			modalRelativeTo: self window