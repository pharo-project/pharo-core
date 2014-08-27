formDeprecatedMethod
	| oldName protocol newName deprecatedSource category |
	oldName := self formOldName.
	newName := self formNewName.
	protocol := (class methodFor: newSelector) protocols.
	class isMeta ifTrue: [ category := class realClass category ] ifFalse: [ category := class category ].
	deprecatedSource := oldName , String cr , String tab
		,
			'self 
		deprecated: ''Use ' , newSelector asString
		,
			' instead''
		on: 	''' , Date today asString
		,
			''' 
		in: ''' , category asString
		,
			'''.
	^ self ' , newName.
	(model classNamed: class realClass name) compile: deprecatedSource classified: protocol