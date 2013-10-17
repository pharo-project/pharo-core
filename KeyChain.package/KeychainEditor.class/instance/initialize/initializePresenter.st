initializePresenter 

	keychainEditingWrapper whenChangedDo: [:it |
		groupTextField enabled: it notNil.
		usernameTextField enabled: it notNil.
		setPassword enabled: (it keychain isLocked and: [ it notNil ]).
		it ifNotNil: [
			groupTextField text: it group.
			usernameTextField text: it usernamePassword username.
			password := it usernamePassword password.
			self updateTitle. ]]