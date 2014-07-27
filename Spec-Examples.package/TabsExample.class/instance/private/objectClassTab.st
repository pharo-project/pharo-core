objectClassTab
	
	^self newTab
		label: 'Object class';
		icon: Smalltalk ui icons nautilusIcon;
		model: (MessageBrowser on: Object methods named: '');
		yourself
	