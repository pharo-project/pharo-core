actions 

	| actions |
	
	actions := OrderedCollection new: 3.

	actions add: (RePropertyAction new
			icon: (Smalltalk ui icons iconNamed: #smallQuestionIcon);
			description: 'View rationale behind the rule';
			action: [ :crit | crit popDescriptionUp ];
			yourself).
	
	self providesChange ifTrue: [ 
		actions add: (RePropertyAction new
			icon: (Smalltalk ui icons iconNamed: #repairIcon);
			description: 'Automatically resolve the issue';
			action: [ :critic |
				| change |
				change := critic change.

				ReSystemAnnouncer uniqueInstance notifyViewedDiffFor: critic of: critic sourceAnchor entity.
	
				(TextModel new
					title: 'Apply the proposed changes?';
					extent: 800@600;
					text: change diffedText;
					disable;
					openDialogWithSpec)
						okAction: [ ReSystemAnnouncer uniqueInstance
								notifyCritic: critic
								AutoFixedFor: critic target.
								change execute ];
			centered ];
			yourself) ].
	
	actions add: (RePropertyAction new
			icon: (Smalltalk ui icons iconNamed: #smallCancelIcon);
			description: 'Ban this rule';
			action: [ :crit | crit guidedBan ];
			yourself).

	^ actions