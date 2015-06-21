privateActionIcon

	 ^IconicButton new 
			target: self;
			actionSelector: #runScript;
			labelGraphic: (Smalltalk ui icons scriptManagerIcon) ;
			color: Color transparent;
			extent: 12 @ 12;
			helpText: 'Run the script(s)';
			borderWidth: 0 