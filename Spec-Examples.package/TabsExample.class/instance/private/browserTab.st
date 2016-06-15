browserTab

	^ self newTab
		label: 'Browser';
		icon: (Smalltalk ui icons iconNamed: #nautilusIcon);
		model: (ClassMethodBrowser new
			classes: Smalltalk allClasses;
			yourself);
		yourself