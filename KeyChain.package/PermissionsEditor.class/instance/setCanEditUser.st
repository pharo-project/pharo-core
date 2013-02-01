initialize
setCanEditUser
	canEditUser
		state: false;
		enabled: false;
		whenChangedDo: [ self checkRoot ];
		label: 'Can user permissions ?'