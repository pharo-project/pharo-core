setCanBrowse
	canBrowse
		state: false;
		enabled: false;
		whenChangedDo: [ self checkRoot ];
		label: 'Can browse code ?'.