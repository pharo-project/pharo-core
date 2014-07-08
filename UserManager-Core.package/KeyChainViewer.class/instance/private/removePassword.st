removePassword

	list selectedItem 
		ifNil: [ ^self ]
		ifNotNil: [:it | 
			keychain value removeUserNamePasswordFor: it key.
			keychain valueChanged ]