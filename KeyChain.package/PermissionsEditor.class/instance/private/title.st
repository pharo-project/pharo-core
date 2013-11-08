title

	^ user value 
			ifNil: 'Permissions editor'
			ifNotNil: [:usr | 'Editing ', usr username, '''s permissions' ]