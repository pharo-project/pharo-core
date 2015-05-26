privateActionIcon

	 ^IconicButton new 
			target: self browser;
			actionSelector: #runExampleMethod:;
		 	arguments: { method };
			labelGraphic: (Smalltalk ui icons iconNamed: #smallDoItIcon) ;
			color: Color transparent;
			extent: 12 @ 12;
			helpText: 'Run the example';
			borderWidth: 0 