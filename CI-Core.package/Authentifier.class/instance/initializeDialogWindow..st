initialization
initializeDialogWindow: aWindow

	aWindow okAction: [ | user password |
		user := userField getText.
		password := passwordField getText.
		(user isEmpty or: [ password isEmpty ])
			ifFalse: [ result contents: (user -> password) ]].
		
	aWindow toolbar okButton 		
					isEventForNextFocusBlock: [:ev | ev keyString = '<tab>' ];
					isEventForPreviousFocusBlock: [:ev | ev keyString = '<Shift-tab>' ].
		
	aWindow toolbar cancelButton 		
					isEventForNextFocusBlock: [:ev | ev keyString = '<tab>' ];
					isEventForPreviousFocusBlock: [:ev | ev keyString = '<Shift-tab>' ].	
		
	self focusOrder
		add: userField;
		add: passwordField;
		add: aWindow toolbar.