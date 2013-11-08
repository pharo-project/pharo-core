title

	^ keychainEditingWrapper value
		ifNil: [ 'Group editor' ]
		ifNotNil: [:it | 
			it group 
				ifEmpty: [ 'Group editor' ] 
				ifNotEmpty: [:name |
					'Editing ', name asString printString, ' group' ]]