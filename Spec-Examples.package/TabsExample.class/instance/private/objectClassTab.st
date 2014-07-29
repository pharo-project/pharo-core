objectClassTab
	
	^self newTab
		label: 'Object class';
		icon: Smalltalk ui icons nautilusIcon;
		model: (MessageBrowser new messages: Object methods);
		yourself
	