fixAutomatically: aQACritic 
	
	(DiffModel new
		title: 'Apply the proposed changes?';
		showOptions: true;
		extent: 800@600;
		leftText: aQACritic target sourceCode;
		rightText: aQACritic suggestedCode;
		contextClass: aQACritic target methodClass;
		openDialogWithSpec)
			okAction: [ aQACritic fixAutomatically ];
			centered;
			modalRelativeTo: self window