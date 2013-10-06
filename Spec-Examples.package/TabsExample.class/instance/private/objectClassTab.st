objectClassTab
	| tab |
	
	tab := self newTab.
	tab
		label: 'Object class';
		icon: Smalltalk ui icons nautilusIcon;
		model: (MessageBrowser
			browseMessages: (Object methods) refreshingBlock: [] named: '').
			
	^ tab