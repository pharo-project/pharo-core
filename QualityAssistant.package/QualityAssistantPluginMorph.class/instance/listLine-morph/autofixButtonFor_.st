autofixButtonFor: aCritic
	
	^ IconicButton new
				target: self;
				labelGraphic: (Smalltalk ui icons iconNamed: #repairIcon);
				actionSelector: #fixAutomatically:;
				arguments: { aCritic };
				color: Color transparent;
				helpText: 'Automatically resolve the issue';
				extent: 16 @ 16;
				borderWidth: 0;
				yourself