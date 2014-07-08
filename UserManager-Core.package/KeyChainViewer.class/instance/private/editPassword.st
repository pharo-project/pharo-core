editPassword

	list selectedItem
		ifNil: [ ^ self ]
		ifNotNil: [:it || wrapper editor |
			keychain value ifNotNil:[:kc | kc unlock ].
			wrapper :=  KeychainEditingWrapper new
							keychain: keychain value;
							group: it key;
							usernamePassword: it value.
							
			editor := KeychainEditor new
						keychainEditingWrapper: wrapper;
						yourself.
			self window ifNotNil: [: w | w openModal: (editor openDialogWithSpec window
				okAction: [
					it key: wrapper group.
					it value: wrapper usernamePassword.
					keychain valueChanged.
					list setSelectedItem: it];
				yourself) ].
			 ]