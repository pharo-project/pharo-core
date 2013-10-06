browserTab
	| tab |
	
	tab := self newTab.
	tab
		label: 'Browser';
		icon: Smalltalk ui icons nautilusIcon;
		model: (ClassMethodBrowser new
			classes: Smalltalk allClasses;
			yourself).
			
	^ tab