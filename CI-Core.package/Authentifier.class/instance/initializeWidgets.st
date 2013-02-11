initialization
initializeWidgets 

	self instantiateModels: #(
		userLabel 			LabelModel
		userField 			TextInputFieldModel
		gmail 				LabelModel
		passwordLabel 	LabelModel
		passwordField 		TextInputFieldModel ).
				
	userLabel text: 'Username:'.
	userField 
		entryCompletion: nil;
		autoAccept: true;
		keyStrokeForNextFocus: Character tab asShortcut;
		keyStrokeForPreviousFocus: Character tab shift asShortcut;
		ghostText: 'username'.
		
	gmail text: '@gmail.com'.
	passwordLabel text: 'Password:'.
	passwordField
		autoAccept: true; 
		acceptOnCR: true;
		ghostText: 'password';
		entryCompletion: nil;
		keyStrokeForNextFocus: Character tab asShortcut;
		keyStrokeForPreviousFocus: Character tab shift asShortcut;
		beEncrypted.