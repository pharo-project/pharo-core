initializeButtons
	add
		label: '+';
		state: true;
		action: [ self addUser ].
	remove
		label: '-';
		state: false;
		action: [ self removeUser ].
	edit
		label: 'edit';
		state: false;
		action: [ self editUser ]