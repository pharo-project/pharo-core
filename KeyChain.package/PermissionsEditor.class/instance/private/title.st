title

	^ user contents 
			ifNil: 'Permissions editor'
			ifNotNil: [:usr | 'Editing ', usr username, '''s permissions' ]