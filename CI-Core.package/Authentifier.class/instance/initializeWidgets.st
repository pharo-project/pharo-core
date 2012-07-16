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
		isEventForNextFocusBlock: [:ev | ev keyString = '<tab>' ];
		isEventForPreviousFocusBlock: [:ev | ev keyString = '<Shift-tab>' ];
		ghostText: 'username'.
		
	gmail text: '@gmail.com'.
	passwordLabel text: 'Password:'.
	passwordField
		autoAccept: true; 
		ghostText: 'password';
		entryCompletion: nil;
		isEventForNextFocusBlock: [:ev | ev keyString = '<tab>' ];
		isEventForPreviousFocusBlock: [:ev | ev keyString = '<Shift-tab>' ];
		beEncrypted.