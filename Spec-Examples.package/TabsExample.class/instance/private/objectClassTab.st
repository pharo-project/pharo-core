objectClassTab
	
	^self newTab
		label: 'Object class';
		icon: (Smalltalk ui icons iconNamed: #nautilusIcon);
		model: (MessageBrowser new messages: Object methods);
		yourself
	