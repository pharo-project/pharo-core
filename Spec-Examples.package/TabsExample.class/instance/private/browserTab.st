browserTab

	^ self newTab
		label: 'Browser';
		icon: (Smalltalk ui iconNamed: #nautilusIcon);
		model: (ClassMethodBrowser new
			classes: Smalltalk allClasses;
			yourself);
		yourself