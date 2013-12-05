initializeWidgets

	username := self newTextInput.
	usernameLabel := self newLabel.
	
	password := self newTextInput.
	passwordLabel := self newLabel.
	
	showPassword := self newCheckBox.
	
	usernameLabel text: 'Username'.
	passwordLabel text: 'Password'.
	
	password
		ghostText: '*****';
		autoAccept: true;
		beEncrypted.
		
	username 
		ghostText: 'John Doe';
		autoAccept: true.
		
	showPassword	
		label: 'Show password'.
		
	self focusOrder
		add: username;
		add: password;
		add: showPassword.