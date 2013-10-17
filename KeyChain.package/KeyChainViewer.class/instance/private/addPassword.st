addPassword

	| wrapper editor |
	keychain contents ifNotNil:[:kc | kc unlock ].
	
	wrapper :=  KeychainEditingWrapper new
					keychain: keychain contents;
					group: '';
					usernamePassword: UsernamePassword new.
					
	editor := KeychainEditor new
				keychainEditingWrapper: wrapper;
				yourself.
	self window ifNotNil: [: w | w openModal: (editor openDialogWithSpec window
		okAction: [ wrapper :=  KeychainEditingWrapper new
					keychain: keychain contents;
					group: '';
					usernamePassword: UsernamePassword new ];
		yourself)].