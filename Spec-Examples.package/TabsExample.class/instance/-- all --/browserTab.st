browserTab

	^ self newTab
		label: 'Browser';
		icon: Smalltalk ui icons nautilusIcon;
		model: (ClassMethodBrowser new
			classes: Smalltalk allClasses;
			yourself);
		yourself