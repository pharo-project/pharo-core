initializeWidgets

	self instantiateModels: #(
		groupLabel  LabelModel
		groupTextField  TextInputFieldModel
		setPassword  ButtonModel
		usernameLabel  LabelModel
		usernameTextField  TextInputFieldModel ).
	
	groupLabel text: 'Group:'.

	groupTextField
		enabled: false;
		autoAccept: true;
		ghostText: 'group'.
		
	usernameLabel text: 'Username: '.

	usernameTextField 
		enabled: false;
		autoAccept: true;
		ghostText: 'username'.
	
	setPassword 
		enabled: false;
		state: false;
		label: 'set password';
		action: [ self setNewPassword ].
		
	self focusOrder
		add: groupTextField;
		add: usernameTextField